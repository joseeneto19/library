<%@page import="com.library.dao.UserDao" %>
<jsp:useBean id="u" class="com.library.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%

	int i = UserDao.saveUser(u);

	if(i > 0) {
		response.sendRedirect("adduser-sucess.jsp");
	} else {
		response.sendRedirect("adduser-error.jsp");
	}







%>