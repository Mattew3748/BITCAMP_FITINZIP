<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div id="menuView" class="column_left mt200">
   	<div class="nav_wrap" style="border-radius: 5px;">
	    <div class="nav_tit">
	        <p><img src="https://img.ficle.io/www/play/profile.png"></p> <span style="font-size:inherit; line-height: 21px;">�ȳ��ϼ���!<br>${member.nickname }��</span>
	    </div>
	    <div class="submenu">
	        <ul class="clearfix pl20">
	            <li><a href="/mypage/std" class="nav_in">���� Ŭ����</a>
	                <div class="nav_item_in">
	                    <ul class="clearfix">
	                        <li><a href="/clsHistory" class="adClick">Ŭ��������</a></li>
	                        <li><a href="/clsHeart" class="adClick">����Ŭ����</a></li>
	                        <li><a href="/couponHistory" class="adClick">��������</a></li>
	                    </ul>
	                </div>
	            </li>
	        </ul>
	    </div>
	    <div class="submenu">
	        <ul class="clearfix pl20">
	            <li><a href="/mypage/payhis" class="nav_in">��ǰ</a>
	                <div class="nav_item_in">
	                    <ul class="clearfix">
	                        <li><a href="/productHistory" class="adClick">�ֹ���ȸ</a></li>
	                    </ul>
	                </div>
	            </li>
	        </ul>
	    </div>
	    <div class="submenu">
	        <ul class="clearfix pl20">
	            <li><a href="javascript:;" class="nav_in">ȸ������</a>
	                <div class="nav_item_in">
	                    <ul class="clearfix">
	                        <li><a href="/calendar" class="adClick">��������</a></li>
	                        <li><a href="/updateMemberInfo" class="adClick">��������</a></li>
	                        <li><a href="/withdrawal" class="adClick">ȸ��Ż��</a></li>
	                    </ul>
	                </div>
	            </li>
	        </ul>
	    </div>
	</div>
</div>