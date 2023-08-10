<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>네이버 : 회원가입</title>
	<style type="text/css">
	
		.termBox {
			width: 400px; height: 70px; padding: 15px;
			margin: 9px 0 0 32px;
			overflow: scroll; overflow-x: hidden;
		    padding: 15px;
		    border-radius: 6px;
		    border: 1px solid #d6d6d6;
		}
		
	</style>
	
	<script type="text/javascript">
		
	</script>

</head>

<body>

	<div class="inner" style="width: 500px; margin: 0px auto">

		<div class="header">
			<a href="http://www.naver.com">
				<img src="./img/logo_naver.jpg">
			</a>
			<div class="langSelect" style="float: right">
				<select>
					<option>한국어</option>
					<option>English</option>
				</select>
			</div>
		</div>
		<!-- header 종료 -->

		<div id="check1">
			<input type="checkbox" id="checkAll" name="" value="">
			<label for="checkAll">전체 동의하기</label>
			<p>
				실명 인증된 아이디로 가입, 위치기반서비스 이용약관(선택), 
				이벤트・혜택 정보 수신(선택) 동의를 포함합니다.
			</p>
		</div>

		<div id="check2">
			<input type="checkbox" id="term2" name="" value=""> <label
				for="term2">네이버 이용약관</label>
			<div class="termBox">
				여러분을 환영합니다.
				네이버 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다.
				본 약관은 다양한 네이버 서비스의 이용과 관련하여 네이버 서비스를 제공하는 
				네이버 주식회사(이하 ‘네이버’)와 이를 이용하는 네이버 서비스 회원(이하 ‘회원’) 
				또는 비회원과의 관계를 설명하며, 아울러 여러분의 네이버 서비스 이용에 
				도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
				네이버 서비스를 이용하시거나 네이버 서비스 회원으로 가입하실 경우 
				여러분은 본 약관 및 관련 운영 정책을 확인하거나 동의하게 되므로, 
				잠시 시간을 내시어 주의 깊게 살펴봐 주시기 바랍니다.
			</div>
		</div>
		
		<div id="check3">
			<input type="checkbox" id="term3" name="" value=""> <label
				for="term3">개인정보 수집 및 이용 </label>
			<div class="termBox">
				개인정보보호법에 따라 네이버에 회원가입 신청하시는 분께 수집하는 개인정보의 항목, 
				개인정보의 수집 및 이용목적, 개인정보의 보유 및 이용기간, 동의 거부권 및 동의 거부 시 
				불이익에 관한 사항을 안내 드리오니 자세히 읽은 후 동의하여 주시기 바랍니다.
				1. 수집하는 개인정보
				이용자는 회원가입을 하지 않아도 정보 검색, 뉴스 보기 등 대부분의 네이버 서비스를 회원과 
				동일하게 이용할 수 있습니다. 이용자가 메일, 캘린더, 카페, 블로그 등과 같이 개인화 혹은 
				회원제 서비스를 이용하기 위해 회원가입을 할 경우, 네이버는 서비스 이용을 위해 필요한 
				최소한의 개인정보를 수집합니다.
			</div>
		</div>
		
		<div id="check4">
			<input type="checkbox" id="term4" name="" value=""> <label
				for="term4">실명 인증된 아이디로 가입</label>
			<div class="termBox">
				실명 인증된 아이디로 가입하시면 본인인증이 필요한 서비스
				(네이버 페이, 쇼핑, 멤버십 등)를 가입 후 바로 이용하실 수 있어요.
			</div>
		</div>
		
		<div id="check5">
			<input type="checkbox" id="term5" name="" value=""> <label
				for="term5">위치기반서비스 이용약관</label>
			<div class="termBox">
				위치기반서비스 이용약관에 동의하시면, 위치를 활용한 광고 정보 수신 
				등을 포함하는 네이버 위치기반 서비스를 이용할 수 있습니다.
				제 1 조 (목적)
				이 약관은 네이버 주식회사 (이하 “회사”)가 제공하는 위치기반서비스와 
				관련하여 회사와 개인위치정보주체와의 권리, 의무 및 책임사항, 
				기타 필요한 사항을 규정함을 목적으로 합니다.
				제 2 조 (약관 외 준칙)
				이 약관에 명시되지 않은 사항은 위치정보의 보호 및 이용 등에 관한 법률, 
				개인정보보호법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 전기통신기본법, 
				전기통신사업법 등 관계법령과 회사의 이용약관 및 개인정보처리방침, 
				회사가 별도로 정한 지침 등에 의합니다.
				제 3 조 (서비스 내용 및 요금)
				① 회사는 위치정보사업자로부터 위치정보를 전달받아 아래와 같은 
				위치기반서비스를 제공합니다.
			</div>
		</div>
		
		<div id="check6">
			<input type="checkbox" id="term6" name="" value=""> <label
				for="term6">이벤트・혜택 정보 수신</label>
			<div class="termBox">
				네이버 서비스 및 제휴 이벤트・혜택 등의 정보를 휴대전화(네이버앱 알림 또는 문자), 
				이메일로 받을 수 있습니다. 일부 서비스(별개의 회원 체계 운영, 네이버 가입 후 
				추가 가입하는 서비스 등)의 경우, 수신에 대해 별도로 안내드리며 동의를 구합니다.
			</div>
		</div>
		
		<div style="float: right;">
			<a href="">단체, 비즈니스 회원 가입</a>
		</div>
		
		<div style="clear: right">
			<input type="button" value="다음" 
			style="width: 450px; height: 50px; 
			background-color: #09AA5C; color: white;">
		</div>

	</div>
	<!-- header 종료 -->




	<!-- 	다음 버튼만 스크롤 안되게 할 때 참고: https://codingbroker.tistory.com/127-->
	<!-- 	<div style="height: 300px; overflow: auto">  -->
	<!-- 		<div style="height: 200px; background: red">red</div> -->
	<!-- 		<div style="height: 200px; background: orange">orange</div> -->
	<!-- 		<div style="height: 200px; background: yellow">yellow</div> -->
	<!-- 	</div> -->


</body>


</html>