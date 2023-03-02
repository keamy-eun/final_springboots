<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ include file= "/WEB-INF/views/main/header.jsp" %>
<div class="container">
      <hr />

      <!--  -->
      <div class="text-center container-fluid">
        <div class="row">
          <!-- Sidebar -->
          <div class="col-auto wrapper border border-1 m-3 p-3">
            <nav id="sidebar">
              <div class="text-secondary">
                <h3>은정이 아카데미</h3>
              </div>
              <ul class="list-unstyled components fs-5">
                <li class="border-top border-1 p-2">
                  <a
                    href="/mypage/Lecture"
                    target="_self"
                    class="text-decoration-none text-secondary"
                    >수강중인 강의</a
                  >
                </li>
                <li class="border-top border-1 p-2">
                  <a
                    href="/mypage/LectureSignUpList"
                    target="_self"
                    class="text-decoration-none text-secondary"
                    >수강신청내역</a
                  >
                </li>
                <li class="border-top border-1 p-2">
                  <a
                    href="/mypage/EditForm"
                    target="_self"
                    class="text-decoration-none text-secondary"
                    >개인정보수정</a
                  >
                </li>
                <li class="border-top border-1 p-2">
                  <a
                    href="/mypage/selfTestForm"
                    target="_self"
                    class="text-decoration-none text-secondary"
                    >영어실력 테스트</a
                  >
                </li>
              </ul>
            </nav>
          </div>
          <!--  -->
          <div class="col container p-5">
            <div class="mt-4 mb-4">
              <h1>수강중인 강의</h1>

              <!-- 게시글 목록 -->
              <div class="mt-3 mb-4">
                <div class="row mt-5 fs-5 fw-bold">
                  <div class="col-6">강의명</div>
                  <div class="col-2 text-center">강사명</div>
                  <div class="col-2 text-center">바로가기</div>
                  <div class="col-2 text-center">수강신청 취소</div>
                </div>
              </div>
              <hr />
              <!-- 공지사항 -->
                <c:forEach items="${resultMap}" var="resultData" varStatus="loop">
                  <div class="row mt-4 d-flex justify-content-around">
                  <div class="col-6">${resultData.LECTURE_TITLE}</div>
                  <div class="col-2 text-center">${resultData.MEMBER_NAME}</div>
                  <div class="col-2">
                    <a href="/lecture_signup_list" class="btn btn-primary"
                      >강의보러가기</a
                    >
                  </div>
                  <div class="col-2">
                    <a
                      href="/mypage/delete/${resultData.LECTURE_NUMBER}"
                      onclick="alert('수강신청을 취소하였습니다')"
                      class="btn btn-danger"
                      >수강취소</a
                    >
                  </div>
                </div>
                <hr />
                </c:forEach>
            </div>
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
