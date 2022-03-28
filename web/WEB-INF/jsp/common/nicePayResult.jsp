<%@ page contentType="text/html; charset=euc-kr"%>
<%@ page import="kr.co.nicevan.nicepay.adapter.web.NicePayHttpServletRequestWrapper"%>
<%@ page import="kr.co.nicevan.nicepay.adapter.web.NicePayWEB"%>
<%@ page import="kr.co.nicevan.nicepay.adapter.web.dto.WebMessageDTO"%>

<%

request.setCharacterEncoding("euc-kr"); 
/** 1. Request Wrapper Ŭ������ ����Ѵ�.  */ 
NicePayHttpServletRequestWrapper httpRequestWrapper = new NicePayHttpServletRequestWrapper(request);

/** 2. ���� ����Ϳ� �����ϴ� Web �������̽� ��ü�� �����Ѵ�.*/
NicePayWEB nicepayWEB = new NicePayWEB();

/** 2-1. �α� ���丮 ���� */
nicepayWEB.setParam("NICEPAY_LOG_HOME","/wwwroot/ipg_adaptor_log/log");

/** 2-2. ���ø����̼Ƿα� ��� ����(0: DISABLE, 1: ENABLE) */
nicepayWEB.setParam("APP_LOG","1");

/** 2-3. �̺�Ʈ�α� ��� ����(0: DISABLE, 1: ENABLE) */
nicepayWEB.setParam("EVENT_LOG","1");

/** 2-4. ��ȣȭ�÷��� ����(N: ��, S:��ȣȭ) */
nicepayWEB.setParam("EncFlag","S");

/** 2-5. ���񽺸�� ����(���� ���� : PY0 , ��� ���� : CL0) */
nicepayWEB.setParam("SERVICE_MODE", "PY0");

/** 2-6. ��ȭ���� ����(���� KRW(��ȭ) ����)  */
nicepayWEB.setParam("Currency", "KRW");

/** 2-7. �������� ���� (�ſ�ī����� : CARD, ������ü: BANK, ���������ü : VBANK, �޴������� : CELLPHONE ) */
String payMethod = request.getParameter("PayMethod");
nicepayWEB.setParam("PayMethod",payMethod);

nicepayWEB.setParam("EncodeKey","33F49GnCMS1mFYlGXisbUDzVf2ATWCl9k3R++d5hDd3Frmuos/XLx8XhXpe+LDYAbpGKZYSwtlyyLOtS/8aD7A==");

/** 3. ���� ��û */
WebMessageDTO responseDTO = nicepayWEB.doService(httpRequestWrapper,response);

/** 4. ���� ��� */
String resultCode = responseDTO.getParameter("ResultCode"); // ����ڵ� (���� :3001 , �� �� ����)
String resultMsg = responseDTO.getParameter("ResultMsg");   // ����޽���
String authDate = responseDTO.getParameter("AuthDate");   // �����Ͻ� YYMMDDHH24mmss
String authCode = responseDTO.getParameter("AuthCode");   // ���ι�ȣ

String buyerName = responseDTO.getParameter("BuyerName");   // �����ڸ�
String mallUserID = responseDTO.getParameter("MallUserID");   // ȸ�����ID
String goodsName = responseDTO.getParameter("GoodsName");   // ��ǰ��
String mid = responseDTO.getParameter("MID");  // ����ID
String tid = responseDTO.getParameter("TID");  // �ŷ�ID
String moid = responseDTO.getParameter("Moid");  // �ֹ���ȣ
String amt = responseDTO.getParameter("Amt");  // �ݾ�


String cardCode = responseDTO.getParameter("CardCode");   // ����ī����ڵ�
String cardName = responseDTO.getParameter("CardName");   // ����ī����
String cardQuota = responseDTO.getParameter("CardQuota");  // ī�� �Һΰ��� (00:�Ͻú�,02:2����)

String bankCode = responseDTO.getParameter("BankCode");   // �����ڵ�
String bankName = responseDTO.getParameter("BankName");   // �����
String rcptType = responseDTO.getParameter("RcptType"); //���� ������ Ÿ�� (0:�����������,1:�ҵ����,2:��������)
String rcptAuthCode = responseDTO.getParameter("RcptAuthCode"); //���ݿ����� ���� ��ȣ
String rcptTID = responseDTO.getParameter("RcptTID"); //���� ������ TID   

String carrier = responseDTO.getParameter("Carrier");       // ����籸��
String dstAddr = responseDTO.getParameter("DstAddr");       // �޴�����ȣ

String vbankBankCode = responseDTO.getParameter("VbankBankCode");   // ������������ڵ�
String vbankBankName = responseDTO.getParameter("VbankBankName");   // ������������
String vbankNum = responseDTO.getParameter("VbankNum");   // ������¹�ȣ
String vbankExpDate = responseDTO.getParameter("VbankExpDate");   // ��������Աݿ�����

boolean paySuccess = false;		// ���� ���� ����

/** ���� ���� ������ �ܿ��� ���� Header�� ������ ������ Get ���� */

if(payMethod.equals("CARD")){	//�ſ�ī��

	if(resultCode.equals("3001")) paySuccess = true;	// ����ڵ� (���� :3001 , �� �� ����)


}else if(payMethod.equals("BANK")){		//������ü

	if(resultCode.equals("4000")) paySuccess = true;	// ����ڵ� (���� :4000 , �� �� ����)

}else if(payMethod.equals("CELLPHONE")){			//�޴���

	if(resultCode.equals("A000")) paySuccess = true;	//����ڵ� (���� : A000, �� �� ������)

}else if(payMethod.equals("VBANK")){		//�������

	if(resultCode.equals("4100")) paySuccess = true;	// ����ڵ� (���� :4100 , �� �� ����)


}


if(paySuccess){
   // ���� ������ DBó�� �ϼ���.
}else{
   // ���� ���н� DBó�� �ϼ���.
}

%>


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
<title>NICEPAY :: ���� ��û ���</title>
<link rel="stylesheet" href="css/basic.css" type="text/css" />
<link rel="stylesheet" href="css/style.css" type="text/css" />
</head>
<body>
<br>
<table width="632" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
  	<td >
  	  <table width="632" border="0" cellspacing="0" cellpadding="0" class="title">
        <tr>
          <td width="35">&nbsp;</td>
          <td>���� ��û ���</td>
          <td>&nbsp;</td>
        </tr>
      </table>
    </td>
  </tr>
  <tr>
    <td align="left" valign="top" background="images/bodyMiddle.gif"><table width="632" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="35" height="10">&nbsp;</td> <!--��ܿ��� ���� 10px -->
        <td width="562">&nbsp;</td>
        <td width="35">&nbsp;</td>
      </tr>
      <tr>
        <td height="30">&nbsp;</td>
        <td>���� ��û�� �Ϸ�Ǿ����ϴ�.
        </td> 
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="15">&nbsp;</td> <!--�������� ������ ���� ���� 15px-->
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="30">&nbsp;</td> 
        <td class="bold"><img src="images/bullet.gif" /> ���� �����Դϴ�.
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td >&nbsp;</td>
        <td ><table width="562" border="0" cellspacing="0" cellpadding="0" class="talbeBorder" >
          <tr>
            <!-- ���̺� �Ϲ��� ���̴� 30px // Ȧ���༿�� ��� class="thead01" ��� -->
            <td width="100" height="30" id="borderBottom" class="thead01">��� ����</td> 
            <td id="borderBottom" >&nbsp;[<%=resultCode%>] <%=resultMsg%></td>
          </tr>
          <tr>
            <!-- ���̺� �Ϲ��� ���̴� 30px // Ȧ���༿�� ��� class="thead02" ��� -->
            <td width="100" height="30" id="borderBottom" class="thead02">���� ����</td> 
            <td id="borderBottom" >&nbsp;<%=payMethod %></td>
          </tr>
          <tr>
            <td width="100" height="30" id="borderBottom" class="thead01">��ǰ��</td> 
            <td id="borderBottom" >&nbsp;<%=goodsName %></td>
          </tr>
          <tr>
            <td width="100" height="30" id="borderBottom" class="thead02">�ݾ�</td> 
            <td id="borderBottom" >&nbsp;<%=amt %> ��</td>
          </tr>
          <tr>
            <td width="100" height="30" id="borderBottom" class="thead01">�ŷ����̵�</td> 
            <td id="borderBottom" >&nbsp;<%=tid %></td>
          </tr>

			<%if(payMethod.equals("CARD")){%>
			  <tr>
				<td width="100" height="30" id="borderBottom" class="thead02">ī����</td> 
				<td id="borderBottom" ><%= cardName %>&nbsp;</td>
			  </tr>
			  <tr>
				<td width="100" height="30" id="borderBottom" class="thead01">�Һΰ���</td> 
				<td id="borderBottom" ><%= cardQuota %>&nbsp;</td>
			  </tr>
		   <%}else if(payMethod.equals("BANK")){%>
			  <tr>
				<td width="100" height="30" id="borderBottom" class="thead02">����</td> 
				<td id="borderBottom" ><%= bankName %>&nbsp;</td>
			  </tr>
			   <tr>
				<td width="100" height="30" id="borderBottom" class="thead01">���ݿ����� Ÿ��</td> 
				<td id="borderBottom" ><%= rcptType %>&nbsp;&nbsp;(0:�������,1:�ҵ����,2:��������)</td>
			  </tr>
		  <%}else if(payMethod.equals("CELLPHONE")){%>
			  <tr>
				<td width="100" height="30" id="borderBottom" class="thead02">����� ����</td> 
				<td id="borderBottom" ><%= carrier %>&nbsp;</td>
			  </tr>
			   <tr>
				<td width="100" height="30" id="borderBottom" class="thead01">�޴��� ��ȣ</td> 
				<td id="borderBottom" ><%= dstAddr %>&nbsp;</td>
			  </tr>
		  <%}else if(payMethod.equals("VBANK")){%>
			  <tr>
				<td width="100" height="30" id="borderBottom" class="thead02">�Ա� ����</td> 
				<td id="borderBottom" ><%= vbankBankName %>&nbsp;</td>
			  </tr>
			   <tr>
				<td width="100" height="30" id="borderBottom" class="thead01">�Ա� ����</td> 
				<td id="borderBottom" ><%= vbankNum %>&nbsp;</td>
			  </tr>
			  <tr>
				<td width="100" height="30" id="borderBottom" class="thead02">�Ա� ����</td> 
				<td id="borderBottom" ><%= vbankExpDate %>&nbsp;</td>
			  </tr>
		  <%}%>


        </table></td>
        <td height="15">&nbsp;</td>
      </tr>
      <tr>
        <td height="15"></td>  <!--�������� ������ ���� ���� 15px-->
        <td >&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td></td>
        <td class="comment">�׽�Ʈ ���̵��ΰ�� ���� ���� 11�� 30�п� ��ҵ˴ϴ�.        
        </td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="10"></td>  <!--�ϴܿ��� ���� 10px -->
        <td >&nbsp;</td>
        <td>&nbsp;</td>
      </tr>  
    </table></td>
  </tr>
  <tr>
    <td><img src="images/bodyBottom.gif" /></td>
  </tr>
</table>
</body>
</html>