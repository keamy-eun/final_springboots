<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ include file= "/WEB-INF/views/main/header.jsp" %>
<div class="container">
      <hr />

      <!--  -->
      <div class="container d-flex justify-content-center">
        <!-- card -->
        <div class="card text-center w-50 m-5">
          <div class="card-header">접근불가 알림</div>
          <div class="card-body">
            <h5 class="card-title">
              권한이 없습니다. 권한이 부여된 계정으로 로그인하세요!
            </h5>
            <p class="card-text">
              You don't have permission. Please Log in with an authorized
              account!
            </p>
            <a href="/loginForm" class="btn btn-primary">로그인 하러가기</a>
          </div>
        </div>
      </div>
      <!-- footer -->
      <%@ include file= "/WEB-INF/views/main/footer.jsp" %>
    </div>

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
