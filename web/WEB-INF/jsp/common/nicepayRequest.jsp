<%@ page contentType="text/html;charset=euc-kr" %>
<%@ include file="/WEB-INF/jsp/common/incMerchant.jsp" %>
<%
	// ���� IP ��������
	InetAddress inet = InetAddress.getLocalHost();
		
	// ������� �Աݸ�����
	Timestamp toDay = new Timestamp((new Date()).getTime());
	Timestamp nxDay = getTimestampWithSpan(toDay, 1);
	String VbankExpDate = nxDay.toString();
	VbankExpDate = VbankExpDate.substring(0, 10); 
	VbankExpDate = VbankExpDate.replaceAll("-", "");

	String ediDate = getyyyyMMddHHmmss(); // ���������Ͻ�
	
	// ��������Ű (�� �ش� ����Ű�� �ٲ��ּ���)
	String merchantKey = "33F49GnCMS1mFYlGXisbUDzVf2ATWCl9k3R++d5hDd3Frmuos/XLx8XhXpe+LDYAbpGKZYSwtlyyLOtS/8aD7A==";
	// ���� MID
	String merchantID = "nictest00m";
	// ��ǰ ������ �����Ͻʽÿ�.
	// �ϴ� form���� Amt�� �����ؾ� �մϴ�.
	String price = "1004";
	//������ ó�� 
	String md_src = ediDate + merchantID + price + merchantKey;
	DataEncrypt md5_enc =  new DataEncrypt();
	String hash_String  = md5_enc.encrypt(md_src);

%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
<title>NICEPAY :: ���� ��û</title>
<link rel="stylesheet" href="/resources/css/pay/basic.css" type="text/css" />
<link rel="stylesheet" href="/resources/css/pay/style.css" type="text/css" />
<script src="https://web.nicepay.co.kr/flex/js/nicepay_tr.js" type="text/javascript"></script>
<script type="text/javascript">
NicePayUpdate();	//Active-x Control �ʱ�ȭ �Լ��� head �±� �ȿ� �����մϴ�.

/**
	nicepay	�� ���� ������ �����մϴ�.
*/
function nicepay() {
	var payForm	= document.payForm;
		
	// �ʼ� ���׵��� üũ�ϴ� ������ �������ּ���.
	goPay(payForm);
}

/**
	������ ��� �Ҷ� ȣ��˴ϴ�.
*/
function nicepayClose() {
	alert("������ ��� �Ǿ����ϴ�");
}

/**
	����ڰ� ������û�� ������ ����˴ϴ�.
	form ���� Ȯ���Ͽ� �ֽʽÿ�.

*/
function nicepaySubmit(){
	document.payForm.submit();
}

function chkTransType(value){
	document.payForm.TransType.value = value;
}

function chkPayType(){
	document.payForm.PayMethod.value = checkedButtonValue('selectType');
}
</script>
</head>
<body>
<br>
<br>
<form name="payForm" method="post" action="nicePayResult.jsp">
<table width="632" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
  	<td >
  	  <table width="632" border="0" cellspacing="0" cellpadding="0" class="title">
        <tr>
          <td width="35">&nbsp;</td>
          <td>���� ��û</td>
          <td>&nbsp;</td>
        </tr>
      </table>
    </td>
  </tr>
  <tr>
    <td align="left" valign="top" background="/resources/images/common/pay/bodyMiddle.gif">
    <table width="632" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="35" height="10">&nbsp;</td> 
        <td width="562">&nbsp;</td>
        <td width="35">&nbsp;</td>
      </tr>
      <tr>
        <td height="30">&nbsp;</td>
        <td>���� ��û������ �����Դϴ�. <br> </td> 
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="15">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="30">&nbsp;</td> 
        <td class="bold"><img src="/resources/images/common/pay/bullet.gif" /> ������ �����Ͻ� �� Ȯ�ι�ư�� �����ֽʽÿ�.
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td >&nbsp;</td>
        <td ><table width="562" border="0" cellspacing="0" cellpadding="0" class="talbeBorder" >
          <tr>
            <td width="100" height="30" id="borderBottom" class="thead01">���� ����</td> 
            <td id="borderBottom" >
              <input type="checkbox" name="selectType" value="CARD" onClick="javascript:chkPayType();">[�ſ�ī��]
			  <input type="checkbox" name="selectType" value="BANK" onClick="javascript:chkPayType();">[������ü]
			  <input type="checkbox" name="selectType" value="VBANK" onClick="javascript:chkPayType();">[�������]
			  <input type="checkbox" name="selectType" value="CELLPHONE" onClick="javascript:chkPayType();">[�޴�������]
			</td>
          </tr>
          <tr>
			<td width="100" height="30" id="borderBottom" class="thead02" >����Ÿ��</td>
			<td id="borderBottom" >
			  <input type="radio" name="TransTypeRadio" value="0" onClick="javascript:chkTransType('0')" checked>�Ϲ�</input>
			  <input type="radio" name="TransTypeRadio" value="1" onClick="javascript:chkTransType('1')" >����ũ��</input>
			</td>
		  </tr>
		  <tr>
            <td width="100" height="30" id="borderBottom" class="thead01">* ��ǰ��</td> 
            <td id="borderBottom" ><input name="GoodsName" type="text" value="������"/></td>
          </tr>
          <tr>
            <td width="100" height="30" id="borderBottom" class="thead02">* ��ǰ����</td> 
            <td id="borderBottom" ><input name="Amt" type="text" value="<%=price%>"/></td>
          </tr>
          <tr>
            <td width="100" height="30" id="borderBottom" class="thead01">��ǰ�ֹ���ȣ</td> 
            <td id="borderBottom" ><input name="Moid" type="text" value="mnoid1234567890"/></td>
          </tr>
          <tr>
            <td width="100" height="30" id="borderBottom" class="thead02">* �����ڸ�</td> 
            <td id="borderBottom" ><input name="BuyerName" type="text" value="ȫ�浿"/></td>
          </tr> 
          <tr>
            <td width="100" height="30" id="borderBottom" class="thead01">* ������ �̸���</td> 
            <td id="borderBottom" ><input name="BuyerEmail" type="text" value="test@abc.com"/></td>
          </tr>
          <tr>
            <td width="100" height="30" id="borderBottom" class="thead02">* ������ ��ȭ��ȣ</td> 
            <td id="borderBottom" ><input name="BuyerTel" type="text" value="12345678"/></td>
          </tr>
          <tr>
            <td width="100" height="30" id="borderBottom" class="thead01">* �������̵�</td> 
            <td id="borderBottom" ><input name="MID" type="text" value="<%=merchantID%>"/></td>
          </tr>


          <tr>
            <td width="100" height="30" id="borderBottom" class="thead02">��Ų Ÿ��</td> 
            <td id="borderBottom" >
				<select name="SkinType">
					<option value="blue">BLUE</option>
					<option value="purple">PURPLE</option>
					<option value="red">RED</option>
					<option value="green">GREEN</option>
				</select></td>
          </tr>
         
        </table></td>
        <td height="15">&nbsp;</td>
      </tr>
      <tr>
      	<td height="60"></td>
        <td class="btnCenter"><input type="button" value="��û�ϱ�" onClick="javascript:nicepay();"></td> 
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="15"></td>  
        <td >&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td></td>
        <td class="comment">* ǥ �׸��� �ݵ�� �������ֽñ� �ٶ��ϴ�.<br><br/>
        <span class="bold">�׽�Ʈ ���̵�� ������ �ǿ����ؼ��� ���� ���� 11:30�п� �ϰ� ��ҵ˴ϴ�.</span><br/>
        �������̵� ����� �׽�Ʈ���̵� ������� �ʵ��� ������ ���Ǹ� ��Ź�帳�ϴ�.
        </td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="10"></td>  
        <td >&nbsp;</td>
        <td>&nbsp;</td>
      </tr>  
    </table></td>
  </tr>
  <tr>
    <td><img src="/resources/images/common/pay/bodyBottom.gif" /></td>
  </tr>
</table>

<!-- Mall Parameters --> 
<input type="hidden" name="PayMethod" value="CARD">
<!-- ��ǰ ���� -->
<input type="hidden" name="GoodsCnt" value="1">
<!-- �ּ� -->
<input type="hidden" name="BuyerAddr" value="����� ������ ���ﵿ 9-11">

<input type="hidden" name="UserIP" value="<%=request.getRemoteAddr()%>">
<input type="hidden" name="MallIP" value="<%=inet.getHostAddress()%>">

<!-- ���� Ÿ�� 0:�Ϲ�, 1:����ũ�� -->
<input type="hidden" name="TransType" value="0">

<!-- ���� �ɼ�  -->
<input type="hidden" name="OptionList" value="">

<!-- ������� �Աݿ��� ������  -->
<input type="hidden" name="VbankExpDate" value="<%=VbankExpDate%>"> 

<!-- ������ �� ID -->
<input type="hidden" name="MallUserID" value=""> 
<!-- ����� ���̵� -->
<input type="hidden" name="SUB_ID" value="">
<!-- �޴��� �ǹ�/������ ���� -->
<input type="hidden" name="GoodsCl" value="">
<!-- ��ȣȭ �׸� -->
<input name="EncodeParameters" type="hidden" value="CardNo,CardExpire,CardPwd"/>
<!-- ���� �Ұ� -->
<input type="hidden" name="EdiDate" value="<%=ediDate%>">
<input type="hidden" name="EncryptData" value="<%=hash_String%>" >
<input type="hidden" name="SocketYN" value="Y">
<input type="hidden" name="TrKey" value="">

</form>
</body>
</html>