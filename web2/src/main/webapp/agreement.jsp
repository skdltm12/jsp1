<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 약관 및 개인정보처리방침</title>
<style>
.tb2 { display:table; width:1100px; margin:20px auto; border-collapse: collapse; }
.tb2 tr { display:table-row; }
.tb2 th, .tb2 td { display:table-cell; line-height:36px; border-bottom:1px solid #333; text-align: center; 
font-size:14px; }
.tb2 tr:frist-child th, .tb2 tr:frist-child td { border-top:1px solid #333; } 
.tb2 th { background-color:#ccc; }
.tb2 td.img_data { max-width:170px; }
.tb2 td.img_data img { max-width:170px; height:auto; }
.tb2 td p.coment { max-width:170px; line-height:24px;}
</style>
</head>
<body>
<div class="container">
<header id="hd">
	<%@ include file="hd.jsp" %>
</header>
<div id="content">
	<form action="joinForm.jsp" method="post" name="agree_form" onsubmit="return send(this)">
		<h3>회원 약관</h3>
		<div id="protocol1" class="proto">
					제 1 장 총칙
					제 1 조 (목적)
					1. 본 약관은 기업마당 사이트가 제공하는 모든 서비스(이하 "서비스")의 이용조건 및 절차, 이용자와 기업마당 사이트의 권리, 의무, 책임사항과 기타 필요한 사항을 규정함을 목적으로 합니다.
					제 2 조 (약관의 효력과 변경)
					1. 기업마당 사이트는 귀하가 본 약관 내용에 동의하는 경우 기업마당 사이트의 서비스 제공 행위 및 귀하의 서비스 사용 행위에 본 약관이 우선적으로 적용됩니다.
					2. 기업마당 사이트는 본 약관을 사전 고지 없이 변경할 수 있고 변경된 약관은 기업마당 사이트 내에 공지하거나 e-mail을 통해 회원에게 공지하며, 공지와 동시에 그 효력이 발생됩니다.
					이용자가 변경된 약관에 동의하지 않는 경우, 이용자는 본인의 회원등록을 취소 (회원탈락)할 수 있으며 계속 사용의 경우는 약관 변경에 대한 동의로 간주 됩니다.
					제 3 조 (약관 외 준칙)
					1. 본 약관에 명시되지 않은 사항은 전기통신기본법, 전기통신사업법, 정보통신윤리위원회심의규정, 정보통신 윤리강령, 프로그램보호법 및 기타 관련 법령의 규정에 의합니다.
					제 4 조 (용어의 정의)
					본 약관에서 사용하는 용어의 정의는 다음과 같습니다.
					
					1. 이용자 : 본 약관에 따라 기업마당 사이트가 제공하는 서비스를 받는 자.
					2. 가입 : 기업마당 사이트가 제공하는 신청서 양식에 해당 정보를 기입하고, 본 약관에 동의하여 서비스 이용계약을 완료시키는 행위.
					3. 회원 : 기업마당 사이트에 개인 정보를 제공하여 회원 등록을 한 자로서 기업마당 사이트가 제공하는 서비스를 이용할 수 있는 자.
					4. 비밀번호 : 이용자와 회원ID가 일치하는지를 확인하고 통신상의 자신의 비밀보호를 위하여 이용자 자신이 선정한 문자와 숫자의 조합.
					5. 탈퇴 : 회원이 이용계약을 종료시키는 행위.
					제 2 장 서비스 제공 및 이용
					제 5 조 (이용계약의 성립)
					1. 이용계약은 신청자가 온라인으로 기업마당 사이트에서 제공하는 소정의 가입신청 양식에서 요구하는 사항을 기록하여 가입을 완료하는 것으로 성립됩니다.
					2. 기업마당 사이트는 다음 각 호에 해당하는 이용계약에 대하여는 가입을 취소할 수 있습니다.
					① 다른 사람의 명의를 사용하여 신청하였을 때
					② 이용계약 신청서의 내용을 허위로 기재하였거나 신청하였을 때
					③ 다른 사람의 기업마당 사이트 서비스 이용을 방해하거나 그 정보를 도용하는 등의 행위를 하였을 때
					④ 기업마당 사이트를 이용하여 법령과 본 약관이 금지하는 행위를 하는 경우
					⑤ 기타 기업마당 사이트가 정한 이용신청요건이 미비 되었을 때
					제 6 조 (회원정보 사용에 대한 동의)
					1. 회원의 개인정보는 공공기관의 개인정보보호에 관한 법률에 의해 보호됩니다.
					2. 기업마당 사이트의 회원 정보는 다음과 같이 사용, 관리, 보호됩니다.
					① 개인정보의 사용 : 기업마당 사이트는 서비스 제공과 관련해서 수집된 회원의 신상정보를 본인의 승낙 없이 제3자에게 누설, 배포하지 않습니다.
					단, 전기통신기본법 등 법률의 규정에 의해 국가기관의 요구가 있는 경우, 범죄에 대한 수사상의 목적이 있거나 정보통신윤리 위원회의 요청이 있는 경우 또는 기타 관계법령에서 정한 절차에 따른 요청이 있는 경우, 귀하가 기업마당 사이트에 제공한 개인정보를 스스로 공개한 경우에는 그러하지 않습니다.
					② 개인정보의 관리 : 귀하는 개인정보의 보호 및 관리를 위하여 서비스의 개인정보관리에서 수시로 귀하의 개인정보를 수정/삭제할 수 있습니다.
					③ 개인정보의 보호 : 귀하의 개인정보는 오직 귀하만이 열람/수정/삭제 할 수 있으며, 이는 전적으로 귀하의 ID와 비밀번호에 의해 관리되고 있습니다.
					따라서 타인에게 본인의 ID와 비밀번호를 알려주어서는 안되며, 작업 종료 시에는 반드시 로그아웃 해 주시기 바랍니다.
					3. 회원이 본 약관에 따라 이용신청을 하는 것은, 기업마당 사이트가 신청서에 기재된 회원정보를 수집, 이용하는 것에 동의하는 것으로 간주됩니다.
					제 7 조 (사용자의 정보 보안)
					1. 가입 신청자가 기업마당 사이트 서비스 가입 절차를 완료하는 순간부터 귀하는 입력한 정보의 비밀을 유지할 책임이 있으며, 회원의 ID와 비밀번호를 사용하여 발생하는 모든 결과에 대한 책임은 회원 본인에게 있습니다.
					2. ID와 비밀번호에 관한 모든 관리의 책임은 회원에게 있으며, 회원의 ID나 비밀번호가 부정하게 사용 되었다는 사실을 발견한 경우에는 즉시 기업마당 사이트에 신고하여야 합니다. 신고를 하지 않음으로 인한 모든 책임은 회원 본인에게 있습니다. 종료하지 아니함으로써 제3자가 귀하에 관한 정보를 이용하게 되는 등의 결과로 인해 발생하는 손해 및 손실에 대하여 기업마당 사이트는 책임을 부담하지 아니합니다.
					제 8 조 (서비스의 중지)
					1. 기업마당 사이트는 이용자가 본 약관의 내용에 위배되는 행동을 한 경우, 임의로 서비스 사용을 제한 및 중지할 수 있습니다.
					제 9 조 (서비스의 변경 및 해지)
					1. 기업마당 사이트는 귀하가 서비스를 이용하여 기대하는 손익이나 서비스를 통하여 얻은 자료로 인한 손해에 관하여 책임을 지지 않으며, 회원이 본 서비스에 게재한 정보, 자료, 사실의 신뢰도, 정확성 등 내용에 관하여는 책임을 지지 않습니다. 의한 손해에 대하여 책임을 부담하지 아니합니다.
					제 10 조 (게시물의 저작권)
					1. 귀하가 게시한 게시물의 내용에 대한 권리는 귀하에게 있습니다.
					2. 기업마당 사이트는 게시된 내용을 사전 통지 없이 편집, 이동할 수 있는 권리를 보유하며, 게시판운영 원칙에 따라 사전 통지 없이 삭제할 수 있습니다.
					3. 귀하의 게시물이 타인의 저작권을 침해함으로써 발생하는 민, 형사상의 책임은 전적으로 귀하가 부담하여야 합니다.
					제 3 장 의무 및 책임
					제 11 조 (기업마당 사이트의 의무)
					1. 기업마당 사이트는 회원의 개인 신상 정보를 본인의 승낙없이 타인에게 누설, 배포하지 않습니다. 다만, 전기통신관련법령 등 관계법령에 의하여 관계 국가기관 등의 요구가 있는 경우에는 그러하지 아니합니다.
					제 12 조 (회원의 의무)
					1. 회원 가입 시에 요구되는 정보는 정확하게 기입하여야 합니다. 또한 이미 제공된 귀하에 대한 정보가 정확한 정보가 되도록 유지, 갱신하여야 하며, 회원은 자신의 ID 및 비밀번호를 제3자에게 이용하게 해서는 안됩니다.
					2. 회원은 기업마당 사이트의 사전 승낙 없이 서비스를 이용하여 어떠한 영리행위도 할 수 없습니다.
					제 4 장 기타
					제 13 조 (양도금지)
					1. 회원이 서비스의 이용권한, 기타 이용계약 상 지위를 타인에게 양도, 증여할 수 없습니다.
					제 14 조 (손해배상)
					1. 기업마당 사이트는 무료로 제공되는 서비스와 관련하여 회원에게 어떠한 손해가 발생하더라도 기업마당 사이트가 고의로 행한 범죄행위를 제외하고 이에 대하여 책임을 부담하지 아니합니다.
					제 15 조 (면책조항)
					1. 기업마당 사이트는 회원이나 제3자에 의해 표출된 의견을 승인하거나 반대하거나 수정하지 않습니다. 기업마당 사이트는 어떠한 경우라도 회원이 서비스에 담긴 정보에 의존해 얻은 이득이나 입은 손해에 대해 책임이 없습니다. 금전적 거래등과 관련하여 어떠한 책임도 부담하지 아니하고, 회원이 서비스의 이용과 관련하여 기대하는 이익에 관하여 책임을 부담하지 않습니다.
					제 16 조 (재판관할)
					1. 기업마당 사이트와 이용자 간에 발생한 서비스 이용에 관한 분쟁에 대하여는 대한민국 법을 적용하며, 본 분쟁으로 인한 소는 대한민국의 법원에 제기합니다.		
		</div>
		<input type="checkbox" name="agree1" id="agree1">
		<label for="agree1">약관에 동의합니다.</label>
		<br><br><br><br>
		
		<h3>개인정보처리방침</h3>
		<div id="protocol2" class="proto">
	사이트가 취급하는 모든 개인정보는 관련법령에 근거하거나 정보주체의 동의에 의하여 수집ㆍ보유 및 처리되고 있습니다.
	
	「개인정보보호법률」은 이러한 개인정보의 취급에 대한 일반적 규범을 제시하고 있으며, 사이트는 이러한 법령의 규정에 따라 개인정보의 처리목적에 필요한 최소한의 개인정보를 수집ㆍ보유 및 처리하는 개인정보를 공공업무의 적절한 수행과 국민의 권익을 보호하기 위해 적법하고 적정하게 취급할 것입니다.
	
	또한, 사이트는 관련 법령에서 규정한 바에 따라 사이트에서 보유하고 있는 개인정보에 대한 열람청구권 및 정정청구권 등 이용자 여러분의 권익을 존중하며, 이용자 여러분은 이러한 법령상 권익의 침해 등에 대하여 법률이 정하는 바에 따라 정보주체의 권익을 보호 받을 수 있습니다.
	
	사이트의 개인정보처리방침은 사이트가 운영하는 여러 홈페이지에서 이용자 여러분의 개인정보를 보호하기 위한 [홈페이지 이용자의 개인정보보호]와 소관업무를 수행하는데 필요한 개인정보 취급에 관한 [컴퓨터에 의해 처리되는 개인정보보호] 두 가지로 구성되어 있습니다.
	
	위와 같이 자동 수집ㆍ저장되는 정보는 이용자 여러분에게 보다 나은 서비스를 제공하기 위해 홈페이지의 개선과 보완을 위한 통계분석, 이용자와 홈페이지 간의 원활한 의사소통, 보안 침해 대응 등을 위해 이용될 수 있으며, 이러한 정보는 관계법령의 규정에 따라 제출될 수 있음을 유념하시기 바랍니다.
	
	사이트가 운영하는 홈페이지에서 이메일 주소 등 식별할 수 있는 개인정보를 취득하여서는 아니 됩니다. 적법하지 아니한 방법으로 이러한 개인정보를 열람 또는 제공받은 자는 [개인정보보호법률]에 의하여 처벌을 받을 수 있습니다.
		</div>
		<input type="checkbox" name="agree2" id="agree2">
		<label for="agree2">개인정보처리 방침에 동의합니다.</label>
		<br><br><br><br>
		<div class="btn_fr">
			<input type="checkbox" name="agree3" id="agree3" onclick="allCheck()">
			<label for="agree3">전체 약관 및 개인정보처리방침에 동의합니다.</label>
			<div class="btn_wrap">
				<input type="submit" value="회원가입" class="fr_btn"> &nbsp; &nbsp; &nbsp; &nbsp;
				<input type="reset" value="취소" class="fr_btn">
			</div>
		</div>
	</form>
	<script>
	function send(f) {
		if(f.agree1.checked==true && f.agree2.checked==true) {
			return true;
		} else {
			alert("약관에 동의하지 않으셨습니다. 방침 및 약관을 읽고 모든 약관에 동의하여 주시기 바랍니다.");
			return false;
		}
	}
	function allCheck(){
		agree_form.agree1.checked = true;
		agree_form.agree2.checked = true;
	}
	</script>
</div>
<footer id="ft">
	<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>