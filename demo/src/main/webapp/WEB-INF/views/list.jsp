<%@include file="/WEB-INF/views/header.jsp" %>
<%@page isELIgnored="false" %>	
<c:url value="/resources/bootstrap/css" var="a"></c:url>
<c:url value="/resources/bootstrap/js" var="b"></c:url>
<link href="${a}/bootstrap.min.css" rel="stylesheet"/>
 <script src="${b}/jquery-2.2.3.min.js">
 </script>
<script src="${b}/bootstrap.min.js">
</script>
<br><br><br><br>
<div class="jumbotron" style=" margin:auto;
               				 border-radius: 0px;
						    border: 5px solid #DDAD21;
						    padding: 20px;
						    width: 50%;
						     background:#AAAAAA;
						    color:black;
						    /* opacity:0.5; */
						    border-style:solid;
						    border-color:transparent;
						   ">
<h1><center align=left>Chatrooms</center></h1>
</div>
<br><br>
<table width=100%><tr><th>Name</th><th>Chat Room Details</th></tr></table></table>
<hr style="display: block;
    margin-top: 0.5em;
    margin-bottom: 0.5em;
    margin-left: auto;
    margin-right: auto;
    border-style: inset;
    border-width: 5px;"/>                   
          
<table width=100%>          
	<c:forEach items="${chatrooms}" var="chat">
	<tr>
		<td>
			<a href="detail.html?id=${chat.id}"> ${chat.name}</a>
		</td>
		<td>${chat.description}</td>
		<td><a href="remove.html?id=${chat.id}" class="btn btn-primary btn-danger btn-remove">Delete</a></td>
	</tr>
	</c:forEach>
 </table>

<script type="text/javascript">

$(document).ready(function() {
	$(".btn-remove").click(function(e) {
		// do not remove just yet :-)
		e.preventDefault();
		// pass URL to dialog
		$("#myModal .btn-danger").attr("href", $(this).attr("href"));
		// show dialog
		$('#myModal').modal();
	});
});
	
</script>


<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="myModalLabel">Really remove?</h4>
      </div>
      <div class="modal-body">
        Want to remove this chatroom?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <a type="button" class="btn btn-danger" href="">Remove</a>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<%@include file="/WEB-INF/views/footer.jsp" %>
