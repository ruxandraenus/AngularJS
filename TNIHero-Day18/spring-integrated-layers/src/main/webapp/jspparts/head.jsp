<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
<jsp:include page="jsDef.jsp"/>
<meta charset="utf-8">
<title>Hero</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link type="text/css" href="${pageContext.request.contextPath}/jquery/css/jquery.fileupload-ui.css${resourcePrefix}" rel="stylesheet"/>
<%--<link type="text/css" href="${pageContext.request.contextPath}/jquery/css/jquery.fileupload-ui-noscript.css${resourcePrefix}" rel="stylesheet"/>--%>
<link type="text/css" href="${pageContext.request.contextPath}/jquery/css/blueimp-gallery.min.css${resourcePrefix}" rel="stylesheet"/>
<link type="text/css" href="${pageContext.request.contextPath}/jquery/css/jquery-ui-1.10.0.custom.css${resourcePrefix}" rel="stylesheet"/>


<link type="text/css" href="${pageContext.request.contextPath}/fonts/font-awesome.min.css${resourcePrefix}" rel="stylesheet"/>
<link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/jqgrid/css/ui.jqgrid.css${resourcePrefix}"/>
<link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css${resourcePrefix}" rel="stylesheet"/>
<link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-ext.css${resourcePrefix}" rel="stylesheet"/>
<link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-responsive.css${resourcePrefix}" rel="stylesheet"/>
<link href="${pageContext.request.contextPath}/bootstrap/css/docs.css${resourcePrefix}" rel="stylesheet"/>
<link href="${pageContext.request.contextPath}/bootstrap/css/prettify.css${resourcePrefix}" rel="stylesheet"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bootstrap/css/bootmetro.css${resourcePrefix}">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bootstrap/css/bootmetro-tiles.css${resourcePrefix}">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bootstrap/css/bootmetro-charms.css${resourcePrefix}">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bootstrap/css/metro-ui-light.css${resourcePrefix}">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/bootstrap/css/icomoon.css${resourcePrefix}">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/app.css${resourcePrefix}">

<style type="text/css">
.ui-jqgrid td {
font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
font-size: 13px;
}
.ui-jqgrid .ui-pg-input {
width: 24px;
height: 22px;
font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
font-size: 12px;
}
.ui-jqgrid .ui-pg-selbox {
width: 50px;
height: 22px;
font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
font-size: 12px;
}
.ui-jqgrid select {
width: 50px;
padding: 0;
height: 22px;
}
.page-header h1 {
font-size: 24px;
}
.spacer {
margin-top: 40px;
}
input[type=radio] {
opacity: 1;
margin-top:-7px;
margin-left: -5px;
}
.cbox{
width: 13px;
height: 13px;
position: relative;
}
#detaliiPaginaPrime h3{
height:30px;
padding-left:30px;
padding-top:10px;
padding-bottom:10px;
font-size: 1.6em;
}
</style>
</head>