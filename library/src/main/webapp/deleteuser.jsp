<%@page import="com.library.dao.UserDao"%>
<jsp:useBean id="u" class="com.library.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
UserDao.deleteUser(u);
response.sendRedirect("listalivros.jsp");



%>
