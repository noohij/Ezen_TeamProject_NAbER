<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>네이버 : 회원가입</title>
	
	
	<script type="text/javascript">
	
		window.onload = function() {
			
	        var termList = document.getElementsByTagName('input');
	        var selectAllObj = termList[0];
	        var nextButtonObj = document.getElementById('nextButton');
	        
	        nextButtonObj.disabled = true;
		        
	        // 전체 선택 기능
	        selectAllObj.addEventListener('click', function() {
                for (var i = 1; i < termList.length; i++) {
                    termList[i].checked = selectAllObj.checked;
                }
	        });
	        
	     // 다른 체크박스 중 하나라도 해제되면 전체 선택 체크박스도 해제
	        for (var i = 1; i < termList.length; i++) {
				termList[i].addEventListener('change', function() {
					if (!this.checked) {
						selectAllObj.checked = false;
					} else {
						// 다른 체크박스들이 모두 체크되면 전체 선택 체크박스도 체크
						var allChecked = true;
						for (var j = 1; j < termList.length; j++) {
							if (!termList[j].checked) {
								allChecked = false;
								break;
							}
						}
						selectAllObj.checked = allChecked;
					}
				});
			}
	        
	     	// 전체 동의 체크 시, 다음 버튼 활성화(2->1 순 체크)
	        termList[0].addEventListener('change', function() {
				if (termList[1].checked && termList[2].checked) {
					nextButtonObj.disabled = false;
					nextButtonObj.style.backgroundColor = "#09AA5C"; // 활성화 시 배경색 초록색
				} else {
					nextButtonObj.disabled = true;
					nextButtonObj.style.backgroundColor = "#8990A0"; // 비활성화 시 배경색 회색
				}
			});
			
			// 약관 1, 2 동의 시, 다음 버튼 활성화
			termList[1].addEventListener('change', function() {
				if (termList[1].checked && termList[2].checked) {
					nextButtonObj.disabled = false;
					nextButtonObj.style.backgroundColor = "#09AA5C"; // 활성화 시 배경색 초록색
				} else {
					nextButtonObj.disabled = true;
					nextButtonObj.style.backgroundColor = "#8990A0"; // 비활성화 시 배경색 회색
				}
			});
			
			// 약관 2, 1 동의 시, 다음 버튼 활성화
			termList[2].addEventListener('change', function() {
				if (termList[1].checked && termList[2].checked) {
					nextButtonObj.disabled = false;
					nextButtonObj.style.backgroundColor = "#09AA5C"; // 활성화 시 배경색 초록색
				} else {
					nextButtonObj.disabled = true;
					nextButtonObj.style.backgroundColor = "#8990A0"; // 비활성화 시 배경색 회색
				}
			});
			
		} // end of window.onload
		
		
	</script>
	<link rel="stylesheet" type="text/css" href="../css/JoinAgree.css">
</head>

<body>

	<div class="inner">

		<div class="header">
			<a href="http://www.naver.com">
				<img src="../images/naverLogo.PNG">
			</a>
			<div class="langSelect">
				<img src="../images/globe.JPG">
				<select>
					<option>한국어</option>
					<option>English</option>
				</select>
			</div>
		</div>
		<!-- header 종료 -->

		<form method="post">
		
			<div class="checkListDiv">
				<div id="check1" class="checkboxDiv">
					<input type="checkbox" id="checkAll">
					<label for="checkAll" id="checkAllText">
						 전체 동의하기 
					 </label>
					<p>
						실명 인증된 아이디로 가입, 위치기반서비스 이용약관(선택), 이벤트・혜택 정보 수신(선택) 동의를 포함합니다.
					</p>
				</div>
	
				<div id="check2" class="checkboxDiv">
					<input type="checkbox" id="term1">
					<label for="term1">
						<span class="required">[필수]</span>
						 네이버 이용약관
					</label>
					<a href="">
						<img src="../images/arrowRight.JPG" class="arrow">
					</a>
					<div class="termBox">
						<span>
							여러분을 환영합니다. 네이버 서비스 및 제품(이하 ‘서비스’)을 
							이용해 주셔서 감사합니다. 본 약관은 다양한 네이버 서비스의 이용과 관련
							하여 네이버 서비스를 제공하는 네이버 주식회사(이하 ‘네이버’)와 이를 이
							용하는 네이버 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 
							아울러 여러분의 네이버 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함
							하고 있습니다. 네이버 서비스를 이용하시거나 네이버 서비스 회원으로 가입
							하실 경우 여러분은 본 약관 및 관련 운영 정책을 확인하거나 동의하게 되므로, 
							잠시 시간을 내시어 주의 깊게 살펴봐 주시기 바랍니다.
						</span>
					</div>
				</div>
	
				<div id="check3" class="checkboxDiv">
					<input type="checkbox" id="term2">
					<label for="term2">
						<span class="required">[필수]</span> 개인정보 수집 및 이용
					</label>
					<a href="http://www.naver.com">
						<img src="../images/arrowRight.JPG" class="arrow">
					</a>
					<div class="termBox">
					<span>
						개인정보보호법에 따라 네이버에 회원가입 
						신청하시는 분께 수집하는 개인정보의 항목, 개인정보의 수집 및 이용목적, 개인
						정보의 보유 및 이용기간, 동의 거부권 및 동의 거부 시 불이익에 관한 사항을 안내 
						드리오니 자세히 읽은 후 동의하여 주시기 바랍니다. 1. 수집하는 개인정보 이용
						자는 회원가입을 하지 않아도 정보 검색, 뉴스 보기 등 대부분의 네이버 서비스를 
						회원과 동일하게 이용할 수 있습니다. 이용자가 메일, 캘린더, 카페, 블로그 등
						과 같이 개인화 혹은 회원제 서비스를 이용하기 위해 회원가입을 할 경우, 네이버는 
						서비스 이용을 위해 필요한 최소한의 개인정보를 수집합니다.
					</span>
					</div>
				</div>
	
				<div id="check4" class="checkboxDiv">
					<input type="checkbox" id="term3">
					<label for="term3">
						<span class="optional">[선택]</span>
						 실명 인증된 아이디로 가입
					</label>
					<div class="termBox">
						<span>
							실명 인증된 아이디로 가입하시면 본인인증이 필요한 서비스
							(네이버 페이, 쇼핑, 멤버십 등)를 가입 후 바로 이용하실 수 있어요.
						</span>
					</div>
				</div>
	
				<div id="check5" class="checkboxDiv">
					<input type="checkbox" id="term4">
					<label for="term4">
						<span class="optional">[선택]</span>
						 위치기반서비스 이용약관
					</label>
					<a href="">
						<img src="../images/arrowRight.JPG" class="arrow">
					</a>
					<div class="termBox">
						<span>
							위치기반서비스 이용약관에 동의하시면, 위치를 활용한 광고 정보 수신 등을
							포함하는 네이버 위치기반 서비스를 이용할 수 있습니다. 제 1 조 (목적) 이 약관은 
							네이버 주식회사 (이하 “회사”)가 제공하는 위치기반서비스와 관련하여 회사와 개인위치
							정보주체와의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다. 
							제 2 조 (약관 외 준칙) 이 약관에 명시되지 않은 사항은 위치정보의 보호 및 이용 등에 
							관한 법률, 개인정보보호법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 전기통
							신기본법, 전기통신사업법 등 관계법령과 회사의 이용약관 및 개인정보처리방침, 회사가 
							별도로 정한 지침 등에 의합니다. 제 3 조 (서비스 내용 및 요금) ① 회사는 위치정보
							사업자로부터 위치정보를 전달받아 아래와 같은 위치기반서비스를 제공합니다.
						</span>
					</div>
				</div>
	
				<div id="check6" class="checkboxDiv">
					<input type="checkbox" id="term5">
					<label for="term5">
						<span class="optional">[선택]</span> 이벤트・혜택 정보 수신
					</label>
					<div class="termBox">
						<span>네이버 서비스 및 제휴 이벤트・혜택 등의 정보를 휴대전화(네이버앱 알림
						또는 문자), 이메일로 받을 수 있습니다. 일부 서비스(별개의 회원 체계 운영, 
						네이버 가입 후 추가 가입하는 서비스 등)의 경우, 수신에 대해 별도로 안내드리며 
						동의를 구합니다.</span>
					</div>
				</div>
			</div>

			<div id="buttonDiv">
				<input type="submit" value="다음" id="nextButton"	>
			</div>
		</form>
	</div>

</body>


</html>