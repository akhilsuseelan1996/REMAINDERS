<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Event Remainder</title>
</head>
<body>

<h1>Add Remainder</h1>
<form:form method="post" action="save">
<table>


<tr>
<td>Event Name:</td>
<td><input placeholder="Enter the Event Name" name="eventname" autofocus/></td>
</tr>

<tr>
<td>Location: </td>
<td><input placeholder="Enter the Event Location" name="location" autofocus/></td>
</tr>

<tr>
<td>Start Date: </td>
<td><input  type="date" name="startdate" autofocus/></td>
</tr>

<tr>
<td>End Date: </td>
<td><input type="date" name="enddate" autofocus/></td>
</tr>

<tr>
<td>Description: </td>
<td><input type="text" name="description" autofocus/></td>
</tr>

<tr>
<td></td>
<td><input type="submit" value="Save" /></td>
</tr>

</table>
</form:form>

</body>
</html>