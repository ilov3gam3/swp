<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<jsp:include page="../master/head.jsp"/>
<div class="container">
    <c:if test="${not empty error}">
        <div class="alert-danger alert">
            ${error}
        </div>
    </c:if>
    <c:if test="${not empty succcess}">
        <div class="alert-success alert">
            ${succcess}
        </div>
    </c:if>
    <c:if test="${not empty warning}">
        <div class="alert-warning alert">
            ${warning}
        </div>
    </c:if>
    <form action="" method="post">
        <div class="form-group">
            <label for="password">Nhập mật khẩu</label>
            <input type="password" class="form-control" name="password" id="password">
        </div>
        <div class="form-group">
            <label for="re-password">Nhập lại hẩu</label>
            <input type="password" class="form-control" name="re-password" id="re-password">
        </div>
        <button class="btn">Đặt mật khẩu mới</button>
    </form>
</div>

<jsp:include page="../master/foot.jsp"/>
