<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/header.jsp"%>

<br><br>
<br><br>

<div style=" border-radius: 150px;
						    border: 5px solid #73AD21;
						    padding: 1px;
						    width: 20%;
						     background:#C0D0C0;
						    color:magenta;
						    /* opacity:0.5; */
						    border-style:solid;
						    border-color:transparent;">
                <h2 align="center">All Posts</h2>
	   </div>
<br>
<hr style=" display: block;
    margin-top: 0.5em;
    margin-bottom: 0.5em;
    margin-left: auto;
    margin-right: auto;
    border-style: inset;
    border-width: 4px;
border-color:#00f6ff;
width:100%;">
<br><br><br>
         <c:forEach items="${userPost}" var="userpost">
               <div style=" float:left;
               				 border-radius: 50px;
						    border: 1px solid #73AD21;
						    padding: 10px;
						    width: 5%;
						     background:#C0C0C0;
						    color:black;
						    /* opacity:0.5; */
						    border-style:solid;
						    border-color:transparent;">
                  <h3 align="center">${userpost.username}</h3>
         </div>
         <div style=" float:clear;
        					 display:inline-block;
        					
               				 border-radius: 50px;
						    border: 1px solid #73AD21;
						    padding: 20px;
						    width: 100%;
						     background:#aaf6ff;
						    color:black;
						    /* opacity:0.5; */
						    border-style:solid;
						    border-color:transparent;">
                    
                    <p>Title : ${userpost.posttitle}<br>Message : ${userpost.postmessage}<br>Posted On :${userpost.postdate}</p>
                   
           </div><br><br>
            </c:forEach>