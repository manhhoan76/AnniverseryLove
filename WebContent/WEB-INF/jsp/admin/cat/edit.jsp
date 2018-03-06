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
						<li><i class="fa fa-table"></i><a href="${pageContext.request.contextPath }/admin/cat/index">Tin tức</a></li>
						<li><i class="fa fa-table"></i><a href="${pageContext.request.contextPath }/admin/cat/edit">edit</a></li>
					</ol>
				</div>
			</div>
			 <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                             edit cat
                          </header>
                          <div class="panel-body">
                              <form class="form-horizontal" enctype="multipart/form-data" method="post" action="${pageContext.request.contextPath }/admin/cat/edit/${objCat.id}">
                               <div class="form-group">
                                      <label class="control-label col-lg-2" for="inputSuccess">Kỷ niệm</label>
                                      <div class="col-lg-10">
                                          <select id="id_cat"  class="form-control round-input" name="id_remember" >
                                         <c:forEach items="${listRe }" var="objRe">
                                         <c:choose>
										    	<c:when test="${objRe.id == objCat.id_remember }">
										    	 <option  selected ="selected"  value="${objRe.id }" >${objre.name }</option>
										    	</c:when>
										    	<c:otherwise>
										    		<option   value="${objRe.id }" >${objRe.name }</option>
										    	</c:otherwise>
										    </c:choose>
										</c:forEach>	
                                          </select>
                                      </div>
                                  </div>
                                  <div class="form-group">
	                                  <div style="margin-left: 182px;" class="col-lg-10" >
										<input type="submit" class="btn btn-success btn-sm"  title="Bootstrap 3 themes generator" value="Sửa">
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
