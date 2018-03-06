<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
  <link rel="shortcut icon" type="image/png" href="${pageContext.request.contextPath }/templates/admin/img/favicon.png">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    
    <title>H2New -- Manager</title>
	<script type="text/javascript" src="${pageContext.request.contextPath }/templates/ckeditor/ckeditor.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/templates/ckfinder/ckfinder.js"></script>
    <!-- Bootstrap CSS -->    
    <link href="${pageContext.request.contextPath }/templates/admin/css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="${pageContext.request.contextPath }/templates/admin/css/bootstrap-theme.css" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="${pageContext.request.contextPath }/templates/admin/css/elegant-icons-style.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath }/templates/admin/css/font-awesome.min.css" rel="stylesheet" />
    <!-- Custom styles -->
    <link href="${pageContext.request.contextPath }/templates/admin/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/templates/admin/css/style-responsive.css" rel="stylesheet" />
    <script src="<%= request.getContextPath() %>/templates/admin/ckeditor/ckeditor.js" type="text/javascript"></script>
    <script src="<%= request.getContextPath() %>/templates/admin/ckfinder/ckfinder.js" type="text/javascript"></script>
	<!-- container section end -->
    <!-- javascripts -->
    <script src="${pageContext.request.contextPath }/templates/admin/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath }/templates/admin/js/bootstrap.min.js"></script>
    <!-- nicescroll -->
    <script src="${pageContext.request.contextPath }/templates/admin/js/jquery.scrollTo.min.js"></script>
    <script src="${pageContext.request.contextPath }/templates/admin/js/jquery.nicescroll.js" type="text/javascript"></script>
    <!--custome script for all page-->
    <script src="${pageContext.request.contextPath }/templates/admin/assets/jquery-knob/js/jquery.knob.js"></script>
    <script src="${pageContext.request.contextPath }/templates/admin/js/scripts.js"></script>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
      <script src="js/lte-ie7.js"></script>
    <![endif]-->
  </head>

  <body>
  <!-- container section start -->
  <section id="container" class="">
      <!--header start-->
      <header class="header dark-bg">
            <div class="toggle-nav">
                <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"><i class="icon_menu"></i></div>
            </div>

            <!--logo start-->
            <a href="index.html" class="logo">Vina <span class="lite">Enter</span></a>

            <div class="top-nav notification-row">                
                <!-- notificatoin dropdown start-->
                <ul class="nav pull-right top-menu">
                </ul>
            </div>
      </header>      
      <!--header end-->
