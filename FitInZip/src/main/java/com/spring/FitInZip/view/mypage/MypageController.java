package com.spring.FitInZip.view.mypage;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.spring.FitInZip.back.mypage.MypageService;
import com.spring.FitInZip.back.mypage.vo.UserClsDTO;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.spring.FitInZip.back.calendar.service.CalendarService;
import com.spring.FitInZip.back.calendar.vo.CalendarVO;
import com.spring.FitInZip.back.cls.vo.ClsVO;
import com.spring.FitInZip.back.member.vo.MemberVO;

@Controller
public class MypageController {
	
	@Autowired
	private MypageService mypageService;
	
	// 캘린더
	@Autowired
	private CalendarService calendarService;
	
	@RequestMapping(value="calendar")
	public String goCalendar(HttpServletRequest request, Model model) {
		
		return "calendar/myCalendar";
	}
	
	@RequestMapping(value = "getAttendance")
	@ResponseBody
	public List<CalendarVO> getAttendance(HttpSession session) {
		String id = ((MemberVO)session.getAttribute("member")).getId();
		List<CalendarVO> list = calendarService.selectAttendList(id);
		
		return list;
	}
	
	
	@RequestMapping(value = "setAttendance")
	@ResponseBody
	public Map<String, String> name(HttpSession session) {
		String id = ((MemberVO)session.getAttribute("member")).getId();
		
		CalendarVO vo = calendarService.chkAttendance(id);
		Map<String, String> map = new HashMap<String, String>();
		
		if(vo != null) {
			map.put("result", "overlap");
			return map;
		}
		
		int result = calendarService.insertAttendance(id);
		if(result == 1) {
			map.put("result", "chk");
		}
		return map;
	}
	
	// 캘린더 끝
	
	
	@RequestMapping("/mypage")
	public String mypage(HttpSession session) {
		MemberVO member = (MemberVO)session.getAttribute("member");
		
		if(member == null) {
			return "redirect:/loginMain";
		}
		
		return "mypage/mypage";
	}
	
	@RequestMapping("/clsHistory")
	public String clsHistory() {
		return "mypage/clsHistory";
	}
	
	@RequestMapping("/clsdata") 
	@ResponseBody
	public List<UserClsDTO> clsData(UserClsDTO dto, HttpSession session) throws JsonProcessingException {
		MemberVO member = (MemberVO)session.getAttribute("member");
		dto.setMemId(member.getId());
		
		return mypageService.getUserCls(dto);
		
	}
	
	@RequestMapping("/UpdateMypage") 
	public String updateMember(MemberVO vo, HttpServletRequest request, HttpSession session) {
		System.out.println("updateMember 실행");
		
		MemberVO member = (MemberVO)session.getAttribute("member");
		
		System.out.println("updateMember id : " + member.getId());
		System.out.println("updateMember pw : " + member.getPassword());
		
		vo.setId(member.getId());
		vo.setPassword(member.getPassword());
		
		String month = request.getParameter("month");
		if(month.length() == 1) {
			month = "0" + month;
		}
		
		String day = request.getParameter("day");
		if(day.length() == 1) {
			day = "0" + day;
		}
		
		String birth = request.getParameter("year") + month + day;
		System.out.println("birth : " + birth);
		vo.setBirth(birth);
		
		mypageService.updateMember(vo);
		
		return "redirect:/mypage";
	}
	
	
	@RequestMapping("/updateMemberInfo")
	public String getMember() {
		return "mypage/updateMemberInfo";
	}
	
	
	
}