<%@ page contentType="text/html; charset=EUC-KR" %>
<%
	request.setCharacterEncoding("euc-kr");
%>
	<jsp:useBean id="dao" class="dao.boardmodule.FreeBoard"/>
	<jsp:useBean id="dto2" class="dto.Reply"/>
	<jsp:setProperty name="dto2" property="*"/>	

<%
	System.out.println("bUnum = "+dto2.getR_reply());
	System.out.println("bUnum = "+dto2.getB_num());
	dao.deleteReply(dto2.getR_reply());
	response.sendRedirect("BoardRead.jsp?b_num="+dto2.getB_num());
%>