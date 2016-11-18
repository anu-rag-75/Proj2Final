<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/header.jsp" %>
<br>
<br>
<br>
<br>
<div style=" float:left;">
                  
  <h2 align=center>Registeration of User</h2>
</div>
<br><br><br><br><br><br><br>
         <div style=" float:right;
               				 border-radius: 50px;
						    border: 1px solid #73AD21;
						    padding: 20px;
						    width: 50%;
						     background:pink;
						     		    color:black;
						    /* opacity:0.5; */
						    border-style:solid;
						    border-color:transparent;">
                  
  
        <p class="lead">Fill in your information:</p>
        

        <form:form action="${pageContext.request.contextPath}/register" method="post" commandName="customer">

        <h3>Basic Info</h3>

        <div class="form-group">
            <label for="name">Your Name:</label><form:errors path="customerName" cssStyle="color: #ff0000"/>
            <form:input path="customerName" id="name" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="email">Email-ID:</label><span style="color: #ff0000">${emailMsg}</span><form:errors
                path="customerEmail" cssStyle="color: #ff0000"/>
            <form:input path="customerEmail" id="email" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="phone">Mobile No.:</label>
            <form:input path="customerPhone" id="phone" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="username">UserName:</label><span style="color: #ff0000">${usernameMsg}</span><form:errors
                path="username" cssStyle="color: #ff0000"/>
            <form:input path="Username" id="username" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="password">Password:</label><form:errors path="password" cssStyle="color: #ff0000"/>
            <form:password path="password" id="password" class="form-Control"/>
        </div>
        <br><br>
        <input type="submit" value="submit" class="btn btn-default">
        <a href="<c:url value="/" />" class="btn btn-default">Cancel</a>
        </form:form>

</div>
        <%@include file="/WEB-INF/views/footer.jsp" %>
