<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
    
<%@include file="../includes/header.jsp" %>

    
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Board List Page</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">Board List Page
                        <button id='regBtn' type="button" class="btn btn-xs pull-right">Register
                         New Board</button>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                        <th>번호</th>
                                        <th>제목</th>
                                        <th>작성자</th>
                                        <th>작성일</th>
                                        <th>수정일</th>
                                    </tr>
                                </thead>
                             
                             <c:forEach items="${list}" var="board">
                             	<tr>
                             		<td><c:out value="${board.bno}"/></td>
                             		<td><a href='/board/get?bno=<c:out value="${board.bno }"/>'>
                             		<c:out value="${board.title }"/></a></td>
      
                             		<td><c:out value="${board.writer}"/></td>
                             		<td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.regdate}"/></td>
                             		<td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.updateDate}"/></td>
                             	</tr>
                             </c:forEach>
                                
                            </table>
                            <div id="myModal" class="modal" tabindex="-1" role="dialog">
								  <div class="modal-dialog" role="document">
								    <div class="modal-content">
								      <div class="modal-header">
								        <h5 class="modal-title">버튼기능</h5>
								        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
								          <span aria-hidden="true">&times;</span>
								        </button>
								      <div class="modal-body">
										    <p>처리가 완료되었습니다.</p>
								      </div>				 			      
								      <div class="modal-footer">
								       <!--  <button type="button" class="btn btn-primary">Save changes</button> -->
								        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
								      </div>
								    </div>
								  </div>
								</div>         
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-6 -->
            </div>
            <!-- /.row -->

<script>
	$(document).ready(function(){
		let result ='<c:out value="${result}"/>';
		
		checkModal(result);
		
		history.replaceState({}, null, null); //히스토리 내용을 지움(이전 내용 모달은 보이지 않게)
		
		function checkModal(result){
			if (result == '' || history.state ){
				return;
			}
			
		if(pasreInt(result) > 0){
			$('.model-body').html(
					"게시물 " + parseInt(result) + " 번이 등록되었습니다.");
			}
		$("#myModal").modal("show");
		}
		
		$("#regBtn").on("click", function(){
			self.location ="/board/register";
		});
		
		
		
		
		
		$('#myModal').on('shown.bs.modal', function () {
			  $('#myInput').trigger('focus')
			})
	})	
	$('#myModal').on('shown.bs.modal', function () {
  $('#myInput').trigger('focus')
})
</script>

<%@include file="../includes/footer.jsp" %>            