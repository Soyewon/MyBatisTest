<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*"%>
<%@ page import="java.io.InputStream" %>
<%@ page import="org.apache.ibatis.session.SqlSessionFactory" %>
<%@ page import="org.apache.ibatis.session.SqlSession" %>
<%@ page import="org.apache.ibatis.io.Resources" %>
<%@ page import="java.io.IOException" %>
<%@ page import="org.apache.ibatis.session.SqlSessionFactoryBuilder" %>
<%@ page import="org.example.Tiger" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>
    <title>출력 페이지</title>
</head>

<body>
<%=new Date()%>
<table border="1">
    <tr>
        <th>Name</th>
        <th>Age</th>
    </tr>
    <%
        InputStream is = null;
        SqlSessionFactory sf = null;
        SqlSession sess = null;
        List<Tiger> list = null;
        try {
            is = Resources.getResourceAsStream("mybatis-config.xml");
            sf = new SqlSessionFactoryBuilder().build(is);
            sess = sf.openSession();
            list = sess.selectList("test");
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (sess != null) {
                sess.close();
            }
        }

        for (Tiger p : list) {
    %>
    <tr>
        <td><%= p.getName() %></td>
        <td><%= p.getAge() %></td>
    </tr>
    <%
        }
    %>
</table>
</body>