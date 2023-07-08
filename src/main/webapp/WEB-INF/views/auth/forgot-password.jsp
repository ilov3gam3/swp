<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<jsp:include page="../master/head.jsp"/>
<div class="container">
    <c:if test="${not empty success}">
        <div class="alert-success alert">
            ${success}
        </div>
    </c:if>
    <c:if test="${not empty warning}">
        <div class="alert-warning alert">
            ${warning}
        </div>
    </c:if>
    <div class="row">
        <div class="col-md-6">
            <h1>Quên mật khẩu</h1>
            <div class="alert alert-info">
                Nhập email và số điện thoại đăng kí tài khoản của bạn để lấy lại mật khẩu. Chúng tôi sẽ gửi đường link lấy lại mật khẩu vào email của bạn.
            </div>
            <form action="" method="post">
                <div class="form-group">
                    <label for="email">Nhập Email</label>
                    <input type="email" class="form-control" name="email" id="email">
                </div>
                <div class="form-group">
                    <label for="tel">Nhập Số điện thoại</label>
                    <input type="tel" class="form-control" name="tel" id="tel">
                </div>
                <button class="btn">Lấy lại mật khẩu</button>
            </form>
        </div>
        <div class="col-md-6">
            <h1 class="text-center">Đã có tài khoản</h1>
            <div class="row">
                <div class="col-md-6">
                    <a href="${pageContext.request.contextPath}/login">
                        <button class="btn btn-block">Đăng nhập</button>
                    </a>
                </div>
                <div class="col-md-6">
                    <a href="${pageContext.request.contextPath}/register">
                        <button class="btn btn-block">Đăng kí</button>
                    </a>
                </div>
            </div>
        </div>
    </div>

</div>
<jsp:include page="../master/foot.jsp"/>
