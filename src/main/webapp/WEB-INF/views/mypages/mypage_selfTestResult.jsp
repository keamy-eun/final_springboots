<%-- <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file= "/WEB-INF/views/main/header.jsp" %>
    <div class="container">
      <hr />

      <!-- -------------------------- -->
      <div class="text-center container-fluid">
        <div class="row">
          <!--  -->
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
          <div class="container col p-5">
            <!--  -->
            <div
              class="modal modal-sheet position-static d-block bg-warning py-5"
              tabindex="-1"
              role="dialog"
              id="modalSheet"
            >
              <div class="modal-dialog" role="document">
                <div class="modal-content rounded-4 shadow">
                  <div class="modal-header border-bottom-0">
                    <h1 class="modal-title fs-5">영어실력 테스트 결과</h1>
                   
                  </div>
                  <div class="modal-body py-0 text-start">
                    <p>
                      <div>
                        <span class="h2">홍길동</span>님의 TOEIC 예상 점수는
                        <span class="h2">${resultMap.resultScore}점</span>입니다
                      </div>
                      <div class="mt-3">
                        <span class="h3 text-primary"
                          >${resultMap.resultCategory}</span
                        >의 문제유형에 약한거 같아요
                      </div>
                      <div class="mt-3">자, 그럼 당신을 위한 무슨 강좌가 있는지 구경하러 가볼까요? </div>
                    </p>
                  </div>
                  <div class="modal-footer flex-column border-top-0">
                    <a href="/lecture_signup_list"
                      class="btn btn-lg btn-success w-100 mx-0 mb-2"
                    >
                      강의목록 확인하러 가기
                  </a>
                    <a href="/main"
                      class="btn btn-lg btn-primary w-100 mx-0"
                    >
                      메인화면으로
                </a>
                  </div>
                </div>
              </div>
            </div>
            <!--  -->
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
    <!-- SCRIPT -->
    <script src="https://cdn.jsdelivr.net/npm/admin-lte@3.1/dist/js/adminlte.min.js"></script>
  </body>
</html>
