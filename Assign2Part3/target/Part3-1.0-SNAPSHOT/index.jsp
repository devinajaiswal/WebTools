

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>  
<html>  
<head>  
    <title>JSTL Tag Examples</title>  
</head>  
     <body>  
        <h1>Examples of Core tags</h1>
        <h4>Usage of c:out and c:set tag</h4>
        Salary present: <c:set var="salary" scope="session" value="${12000}"/>  
        <c:out value="${salary}"></c:out>
        <br>
        <c:remove var="salary"/>   
        
        <c:out value="${salary}"></c:out>
        Salary removed: 
         <h4>Usage of c:if tag</h4>
        <c:out value="${dummyName}"> No name </c:out>
        <c:if test="${dummyName==null}">
        Empty
        </c:if>
        
        <h1>Examples of Formatting tags</h1>
        <h4>Usage of fmt:parseNumber tag </h4> 
        <c:set var="Amount" value="6765.647748" /> 
            <fmt:parseNumber var="j" type="number" value="${Amount}" />  
    <p><i>Amount is:</i>  <c:out value="${j}" /></p>  
  
    <fmt:parseNumber var="j" integerOnly="true" type="number" value="${Amount}" />  
    <p><i>Amount is:</i>  <c:out value="${j}" /></p> 
    
    <h4>Usage of fmt:formatDate tag </h4> 
    
        <c:set var="date" value="<%=new java.util.Date()%>" />  
<p><b>Date and Time in Indian Standard Time(IST) Zone:</b> <fmt:formatDate value="${date}"  
             type="both" timeStyle="long" dateStyle="long" /></p>  
<fmt:setTimeZone value="GMT-10" />  
<p><b>Date and Time in GMT-10 time Zone: </b><fmt:formatDate value="${date}"  
             type="both" timeStyle="long" dateStyle="long" /></p>  

<h4>Usage of fmt:formatNumber tag </h4> 

<c:set var="Amount" value="9850.14115" />  
<p> Value-1:  
<fmt:formatNumber value="${Amount}" type="currency" /></p>  
<p> Value-2:  
<fmt:formatNumber type="number" groupingUsed="true" value="${Amount}" /></p>  
<p>Value-3:  
<fmt:formatNumber type="number" maxIntegerDigits="3" value="${Amount}" /></p>  


   <h1>Examples of Function tags</h1>
<c:set var="string1" value="Welcome Devina Jaiswal"/>  
${fn:toLowerCase("HELLO,")}  
<br>
String before using substring function: 
<c:out value="${string1}"></c:out>
    <br>
    String after using substring function:
${fn:substring(string1, 9, 20)}  
<br><!-- comment -->
<c:set var="str1" value="Welcome to the USA "/>  
<c:set var="str2" value="Hello"/>  
Length of the String "Welcome to the USA" is: ${fn:length(str1)}<br>  
Length of the String "Hello" is: ${fn:length(str2)}  

     
      <h1>Examples of XML tags</h1>
      
<c:set var="employee"> 
<employees>  
    <employee>  
      <name>John Doe</name>  
      <age>40</age>  
    </employee>  
 <employee>  
        <name>Lily Bass</name>  
      <age>52</age> 
    </employee>  
 <employee>  
        <name>Katherine Pierce</name>  
      <age>60</age> 
    </employee>  
</employees>  
 
</c:set> 
<x:parse xml="${employee}" var="output"/>  
<b>Name of the employee is</b>:  
<x:out select="$output/employees/employee[1]/name" /><br>  
<b>Age of Lily Bass: </b>:  
<x:out select="$output/employees/employee[2]/age" />  
<br>
<h3>Example of x:if tag:</h3>

  <x:if select = "$output/employees/employee[2]/age > 50">
      Katherine's age is greater than 50.
</x:if>




     
     </body>  





</html>    