<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div id="menuView" class="column_left mt200">
   	<div class="nav_wrap" style="border-radius: 5px;">
	    <div class="nav_tit">
	        <p><img src="${member.profileImgFileName}" onerror="this.src='../resources/mypage/imgs/profile_img.jpg'"></p> <span style="font-size:inherit; line-height: 21px;">�ȳ��ϼ���!<br>${member.nickname }��</span>
	    </div>
	    <div class="submenu">
	        <ul class="clearfix pl20">
	            <li><a class="nav_in" style="text-decoration: none;">���� Ŭ����</a>
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
	            <li><a class="nav_in" style="text-decoration: none;">��ǰ</a>
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
	            <li><a class="nav_in" style="text-decoration: none;">ȸ������</a>
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