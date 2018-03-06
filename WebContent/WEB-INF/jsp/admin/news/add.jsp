<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@include file="/templates/taglib.jsp" %>
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
		  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-table"></i> Tin tức</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-table"></i><a href="${pageContext.request.contextPath }/admin/new/index">Tin tức</a></li>
						<li><i class="fa fa-table"></i><a href="${pageContext.request.contextPath }/admin/new/add">Add</a></li>
					</ol>
				</div>
			</div>
			<c:choose>
				<c:when test="${msg == 0}">
					<div class="panel-body"><div class="alert alert-danger fade in"><button data-dismiss="alert" class="close close-sm" type="button"><i class="icon-remove"></i></button><strong>Warning!</strong> Username đã trùng!</div></div>
				</c:when>
			</c:choose>
			 <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                             Add News
                          </header>
                          <div class="panel-body">
                              <form class="form-horizontal" enctype="multipart/form-data" method="post" action="${pageContext.request.contextPath }/admin/new/add">
                               
                                  <div class="form-group">
                                      <label class="col-sm-2 control-label">Name</label>
                                      <div class="col-sm-10">
                                          <input type="text" class="form-control round-input" name="name">
                                      </div>
                                  </div>
                                    <div class="form-group">
                                  <header class="panel-heading">
                                     Preview
                                  </header>
                                  <div class="panel-body">
                                      <div class="form">
                                              <div class="form-group">
                                                  <label class="control-label col-sm-2">Preview</label>
                                                  <div class="col-sm-10">
                                                      <textarea class="form-control ckeditor" id="editor1" rows="6" name="preview"></textarea>
                                                  </div>
                                              </div>
                                      </div>
                                  </div>
                                  
								</div>
								<div class="form-group">
                                  <header class="panel-heading">
                                     Detail
                                  </header>
                                  <div class="panel-body">
                                      <div class="form">
                                              <div class="form-group">
                                                  <label class="control-label col-sm-2">Detail</label>
                                                  <div class="col-sm-10">
                                                      <textarea name="detail" class="form-control ckeditor" id="editor2" rows="6"></textarea>
                                                  </div>
                                              </div>
                                      </div>
                                  </div>
                                 
								</div>
								<script type="text/javascript">
									var editor1 = CKEDITOR.replace('editor1');
									CKFinder.setupCKEditor(editor1,'${pageContext.request.contextPath }/templates/ckfinder/');
									var editor2 = CKEDITOR.replace('editor2');
									CKFinder.setupCKEditor(editor2,'${pageContext.request.contextPath }/templates/ckfinder/');
								</script>
								<div class="form-group">
                                      <label class="col-sm-2 control-label">Date</label>
                                      <div class="col-sm-10">
                                          <input type="text" class="form-control round-input"  name="date">
                                      </div>
                                  </div>
                                 <div class="form-group">
                                      <label for="exampleInputFile" style="margin-left: 205px;">Hình ảnh</label>
                                      <input type="file" id="exampleInputFile" style="margin-left: 205px;" name="Picture">
                                  </div>
                                  <div class="form-group">
	                                  <div style="margin-left: 182px;" class="col-lg-10" >
										<input type="submit" class="btn btn-success btn-sm"  title="Bootstrap 3 themes generator" value="Thêm">
									</div>
								</div>
                              </form>
                          </div>
                      </section>
                  </div>
              </div>
              <!-- page end-->
          </section>
      </section>
      <!--main content end-->
