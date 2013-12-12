<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<c:set var="partialExpireToken" scope="application" value="0.0.11"/>
<c:set var="resourcePrefix" scope="application" value="?_${partialExpireToken}"/>
<c:set var="appPath" value="${pageContext.request.contextPath}"/>

<script type="text/javascript">
var partial_expire_token='${partialExpireToken}';
var appContext = '${appPath}';
var flowCov;
var resourceSuffix='?_'+partial_expire_token;
</script>