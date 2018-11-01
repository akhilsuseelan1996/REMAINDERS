<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Event Remainder</title>
</head>
<body>

<h1>Edit Remainder</h1>
<form:form method="post" action="/remainder/remsave">
<table>

<tr>
<td></td>
<td><form:hidden path="id"/> </td></tr>

<tr>
<td>Event Name:</td>
<td><form:input placeholder="Enter the Event Name" path="eventname" autofocus/></td>
</tr>

<tr>
<td>Location: </td>
<td><form:input placeholder="Enter the Event Location" path="location" autofocus/></td>
</tr>

<tr>
<td>Start Date: </td>
<td><form:input  type="date" path="startdate" autofocus/></td>
</tr>

<tr>
<td>End Date: </td>
<td><form:input type="date" path="enddate" autofocus/></td>
</tr>

<tr>
<td>Description: </td>
<td><form:input type="textarea" path="description" autofocus/></td>
</tr>

<tr>
<td></td>
<td><input type="submit" value="Save" /></td>
</tr>

</table>
</form:form>


</body>
</html>