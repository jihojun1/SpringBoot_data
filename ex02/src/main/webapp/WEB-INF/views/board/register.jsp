<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
                            <div class="panel-heading">
                                Board List Page
                            </div>
                            <!-- /.panel-heading -->
                            <div class="panel-body">
								 <form role="form" action="/board/register" method="post">
                                        <div class="form-group">
                                            <label>제목</label>
                                            <input class="form-control" name='title'>
                                             <p class="help-block">제목을 입력해 주세요.</p>
                                        </div>
                                         <div class="form-group">
                                            <label>내용</label>
                                            <textarea class="form-control" rows="3" name='content'></textarea>
                                        </div>
                                          <div class="form-group">
                                            <label>작성자</label>
                                            <input class="form-control" name='writer'>
                                        </div>
                                         <button type="submit" class="btn btn-default">Submit Button</button>
                                        <button type="reset" class="btn btn-default">Reset Button</button>
                               </form>
                            </div>
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-6 -->
                </div>
                <!-- /.row -->
                </div>
                <!-- /#page-wrapper -->

                </div>
                <!-- /#wrapper -->

                <!-- jQuery -->
                <script src="/resources/vendor/jquery/jquery.min.js"></script>

                <!-- Bootstrap Core JavaScript -->
                <script src="/resources/vendor/bootstrap/js/bootstrap.min.js"></script>

                <!-- Metis Menu Plugin JavaScript -->
                <script src="/resources/vendor/metisMenu/metisMenu.min.js"></script>

                <!-- DataTables JavaScript -->
                <script src="/resources/vendor/datatables/js/jquery.dataTables.min.js"></script>
                <script src="/resources/vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
                <script src="/resources/vendor/datatables-responsive/dataTables.responsive.js"></script>

                <!-- Custom Theme JavaScript -->
                <script src="/resources/dist/js/sb-admin-2.js"></script>

                <!-- Page-Level Demo Scripts - Tables - Use for reference -->
                <script>
                    $(document).ready(function () {
                        $('#dataTables-example').DataTable({
                            responsive: true
                        });
                    });
                </script>

                </body>

                </html>