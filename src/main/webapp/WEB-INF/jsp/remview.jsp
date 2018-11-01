<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
   
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Remainder</title>
</head>
<body>

<h1>Remainder List</h1>  
<table border="1"  >  

<tr><th>Id</th><th>Event Name</th><th>Location</th><th>Start Date</th><th>End Date</th><th>Description</th></tr>  
   <c:forEach var="rem" items="${list}">   
   <tr>  
   <td>${rem.id}</td>  
   <td>${rem.eventname}</td>  
   <td>${rem.location}</td>  
   <td>${rem.startdate}</td>  
   <td>${rem.enddate}</td> 
   <td>${rem.description}</td> 
   <td><a href="remedit/${rem.id}">Edit</a></td>  
   </tr>  
   </c:forEach>  
   </table>  
   <br/>  
   <a href="remform">Add new Remainder</a>  

</body>
</html>