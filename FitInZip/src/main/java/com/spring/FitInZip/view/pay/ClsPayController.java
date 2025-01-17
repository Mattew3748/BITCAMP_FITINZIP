package com.spring.FitInZip.view.pay;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.FitInZip.back.payment.vo.ClsCalDTO;
import com.spring.FitInZip.back.cls.dto.ClsDetailDTO;
import com.spring.FitInZip.back.common.vo.CouponDetailDTO;
import com.spring.FitInZip.back.common.vo.MemCouponVO;
import com.spring.FitInZip.back.common.vo.PaymentDTO;
import com.spring.FitInZip.back.member.vo.MemberVO;
import com.spring.FitInZip.back.payment.ClsPayService;
import com.spring.FitInZip.back.payment.vo.PaymentVO;
import com.spring.FitInZip.back.payment.vo.SelectClsDTO;



@Controller
public class ClsPayController {
	
	@Autowired 
	private ClsPayService clsPayService;
	
	@RequestMapping("/livePTPay")
	public String payView(Model model, HttpSession session) {
		MemberVO vo = (MemberVO)session.getAttribute("member");
		
		if(vo == null) {
			return "redirect:/loginMain";
		}
		
		ClsDetailDTO detail = (ClsDetailDTO)session.getAttribute("detail");
		System.out.println("detail:" + detail);
		
		List<SelectClsDTO> clsCheck = clsPayService.searchCls(vo);
		for (SelectClsDTO sdto : clsCheck) {
			String classCode = sdto.getClsCode();
			System.out.println("classCode: " + classCode);
			if(classCode.equals(detail.getClsCode()) ) {
				return "pay/errorPay";
			}
		}
		
		
		
		
		List<PaymentDTO> list = clsPayService.couponList(vo);
		model.addAttribute("cpList", list); 
		System.out.println("cplist: " + list);
		return "pay/livePTPay";
	}
	
	
	@RequestMapping("/clsPay")
	@ResponseBody
	public CouponDetailDTO clsCoupon(HttpSession session, @RequestParam("selectVal") String couponCode, Model model) {
		MemberVO vo = (MemberVO)session.getAttribute("member");
		ClsDetailDTO detail = (ClsDetailDTO)session.getAttribute("detail");
		
		System.out.println("couponCode: " + couponCode);
		CouponDetailDTO cvo = clsPayService.couponDetail(couponCode);
		Integer totalPrice = detail.getTotalPrice();
		Integer discountPrice = cvo.getDiscountPrice();
		Integer netPrice = totalPrice - discountPrice;
		System.out.println("netPrice: " + netPrice);
		cvo.setFinalPrice(netPrice);
		
		//model.addAttribute("finalInfo", cvo);
		session.setAttribute("finalInfo", cvo);
		return cvo;
	}
	
	@RequestMapping("/clsPayConfirm")
	public String confirmPayment(HttpSession session, PaymentVO pvo, MemCouponVO mvo, ClsCalDTO cdto, RedirectAttributes rttr) {
	MemberVO vo = (MemberVO)session.getAttribute("member");
	ClsDetailDTO detail = (ClsDetailDTO)session.getAttribute("detail");
	CouponDetailDTO dto = (CouponDetailDTO)session.getAttribute("finalInfo");
	System.out.println("결제완료 후 vo: " + vo);
	System.out.println("결제완료 후 detail: " + detail);
	System.out.println("결제완료 후 dto: " + dto);
	
	Integer paidPrice;
	
	//최종가격(쿠폰 사용여부 확인하여 결정)
	if(dto == null) {
		paidPrice = detail.getTotalPrice();
	} else {
		paidPrice = dto.getFinalPrice();
	}
	System.out.println("paidPrice:" + paidPrice);
	
	Integer originPrice = detail.getTotalPrice();
	double commission = paidPrice * 0.1;
	Integer comm = (int)commission;
	double netPrice = paidPrice * 0.9;
	Integer nprice = (int)netPrice;
	
	pvo.setMemId(vo.getId());
	pvo.setClsCode(detail.getClsCode());
	pvo.setOriginPrice(originPrice);
	pvo.setPaidPrice(paidPrice);
	pvo.setCommission(comm); 
	pvo.setNetPrice(nprice);
	
	clsPayService.clsPayment(pvo);
	
	System.out.println("결제정보 등록 완료!");
	
	//강사 정산금 넣어주기
	Integer tc = detail.getTotalCal();
	Integer np = pvo.getNetPrice();
	Integer sum;
	if(tc == null) {
		sum = np;
	} else {
		sum = tc + np;
	}
	
	
	cdto.setTotalCal(sum);
	cdto.setTrainerId(detail.getTrainerId());
	clsPayService.updateCal(cdto);
	
	//쿠폰 사용하여 결제 시
	//System.out.println("detail.getTotalPrice() : " + detail.getTotalPrice());
	//System.out.println("paidPrice(): " + paidPrice);
	if( !detail.getTotalPrice().equals( paidPrice) ) {
		mvo.setMemId(vo.getId());
		mvo.setCouponCode(dto.getCouponCode());
		clsPayService.updateCoupon(mvo);
		
		System.out.println("쿠폰 사용 완료!");
		
		return "redirect:movePayResult";
	} else {

		//insert&update 하고
		return "redirect:movePayResult";
	}
	}
	
	@RequestMapping("/movePayResult")
	public String confirmPaymentView() {
		return "pay/clsPayResult";
	}
	 
}















