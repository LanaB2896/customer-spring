<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link href="/css/main.css" rel="stylesheet"></link>


<title>Insert title here</title>
</head>
<body>

<form:form modelAttribute="customerDetails"  action="add"  method="post"  flush = "false" >
Customer Name<br><br>
<form:input path="customerName"/>
<form:errors path="customerName" cssClass="error" /><br><br>

Customer Address<br><br>
<form:input path="customerAddress"/><br><br>
<form:errors path="customerAddress" cssClass="error" /><br><br>

Customer Pincode<br><br>
<form:input path="customerPincode"/><br><br>
<form:errors path="customerPincode" cssClass="error" /><br><br>

Customer Email<br><br>
<form:input path="customerEmail"/><br><br>
<form:errors path="customerEmail" cssClass="error" /><br><br>

Customer Number<br><br>
<form:input path="customerNumber"/><br><br>


<form:input  path="registrationDate" class= "date"  value = "<fmt:formatDate  value="${cForm.dueDate}"  pattern="MM-dd-yyyy" />"/>


<%--         <form:label path="registrationDate">registrationDate</form:label> --%>
      
<%--             <form:input type="date" path="registrationDate" class= "date" value = "<fmt:formatDate value="" pattern="MM-dd-yyyy"/>"/> --%>
    







<!-- Registration Date<br><br> -->

<%-- <form:input path="registrationDate"/><br><br> --%>

<%-- <form:errors path="registrationDate" cssClass="error" /><br><br> --%>

<%-- <p><fmt:formatDate value="${now}" pattern="MM.dd.yyyy" var="formatted" /></p> --%>

Created By<br><br>
<form:input path="createdBy"/><br><br>
<form:errors path="createdBy" cssClass="error" /><br><br>

Modefied By<br><br>
<form:input path="modifiedBy"/><br><br>
<form:errors path="modifiedBy" cssClass="error" /><br><br>

<input type = submit class="btn btn-info" onsubmit="" value="Add Customer"/>
</form:form>
</body>
</html>

