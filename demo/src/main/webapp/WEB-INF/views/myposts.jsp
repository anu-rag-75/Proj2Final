<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/header.jsp"%>

<br><br>
<br><br>

<div ><h2>Posts</h2>
	   </div>
<br>
<hr >
<br>
	   
	
	<div ng-controller = "postCtrl">
      <c:forEach items="${userPost}" var="userpost">
                  
                  <c:if test="${pageContext.request.userPrincipal.name  == userpost.username}">
                    <div>Title:${userpost.posttitle}<br>
                    Message:${userpost.postmessage}<br>
                    
                    Date:${userpost.postdate}<hr>
       				<a href="editmypost/${userpost.postid}" class="btn btn-primary">Edit</a> 
                    <a href="" ng-click="delmypost(${userpost.postid})" class="btn btn-primary">Delete</a> 
                </div>  <br><br></c:if>
            </c:forEach>
      

</div>
<script>
var postApp = angular.module ("postApp", []);

postApp.controller("postCtrl", function ($scope, $http){
	
	 $scope.delmypost = function (postid) {
		    $http.put('/demo/deletemy/'+postid).success(function (data) {
	        	
	        });
		 };
		 
		 $scope.refreshPost = function () {
			
		        $http.get('/demo/myposts').success(function (data) {
		        	  $scope.userPost=data;
		        });
		    };
	
});


</script>
