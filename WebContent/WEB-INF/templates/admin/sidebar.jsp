<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@include file="/templates/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
   <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu">                
                  <li class="active">
                      <a class="" href="${pageContext.request.contextPath }/admin/new/index">
                          <i class="icon_house_alt"></i>
                          <span>Kỷ niệm</span>
                      </a>
                  </li>
                  <li class="sub-menu">
                      <a href="${pageContext.request.contextPath }/admin/cat/index" class="">
                          <i class="icon_desktop"></i>
                          <span>Hình Ảnh</span>
                      </a>
                  </li>
             </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
      <!--sidebar end-->