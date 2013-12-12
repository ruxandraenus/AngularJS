<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0//EN">
<!--[if IE 7 ]><html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]><html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]><html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en" class="no-js" ng-app="hero">
<jsp:include page="jspparts/head.jsp"/>
<body ata-spy="scroll" data-target=".bs-docs-sidebar" data-twttr-rendered="true">

<div class="navbar navbar-inverse navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
            <div class="nav-collapse collapse">
                <ul class="nav">
                    <%--<li class="dropdown">
                        <a style="width: 170px"
                           href="${pageContext.request.contextPath}/#/facebook"
                           class="dropdown-toggle top-info-block"><h3>Facebook</h3></a>--%>
                    <%--</li>
                    <li class="dropdown">
                        <a  style="width: 170px"
                            href="${pageContext.request.contextPath}/#/twiter"
                            class="dropdown-toggle top-info-block"><h3>Twiter</h3></a>
                    </li>
                    <li class="dropdown">
                        <a  style="width: 170px"
                            href="${pageContext.request.contextPath}/#/linkedin"
                            class="dropdown-toggle top-info-block"><h3>LinkedIn</h3></a>
                    </li>
                    <li class="dropdown">
                        <a style="width: 170px"
                           href="${pageContext.request.contextPath}/#/googleplus"
                           class="dropdown-toggle top-info-block"><h3>Google+</h3></a>
                    </li>--%>
                        <li class="dropdown">
                            <a style="width: 170px"
                               href="${pageContext.request.contextPath}/#/account"
                               class="dropdown-toggle top-info-block"><h3>Account</h3></a>
                        </li>
                </ul>
                <div id="top-info" class="pull-right">
                    <div class="top-info-block">
                        <h3 style="color:silver">Version</h3>
                    </div>
                    <hr class="separator pull-left"/>
                    <div class="top-info-block">
                        <h3 style="color:silver">${partialExpireToken}</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<header class="jumbotron subhead" id="overview">
    <div class="container">
        <h3 id="submenu" align="left"></h3>
    </div>
    <div class="container align-center">
        <p>To Hero</p>
    </div>
</header>
<div class="container" style="padding-left: 35px">
    <div class="row">
        <div class="container" ng-view>
        </div>
    </div>
</div>
<jsp:include page="jspparts/footer.jsp"/>
</body>
</html>