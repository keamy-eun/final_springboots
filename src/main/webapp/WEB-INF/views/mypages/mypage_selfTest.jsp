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
            <div class="text-start">
              <h2>영어실력 테스트</h2>
              <!-- <ul class="dropdown-menu">
                <a href="" class="dropdown-item"
                  >누구나 할수있는 8주 영어문법 마스터</a
                >
                <a href="" class="dropdown-item">850점 토익챌린지</a>
                <a href="" class="dropdown-item">직장인 비즈니스 중국어</a>
              </ul> -->
            </div>

            <!-- 게시판 테이블 -->
            <div class="col text-start">
              <div class="mt-4 mb-4">
                <form class="" action="/mypage/selfTestResult" method="get">
                  <!-- title -->
                  <h1 class="pb-3"></h1>
      
                  <div class="mt-4"><h5>간단한 실력 알아보기 문제입니다.</h5></div>
                  <div><h5>문항은 총 20문항으로 이루어져있으며, 처음 10문항은 듣기 문제로 이루어져있습니다.</h5></div>
                  <div><h5>재생버튼을 클릭하시고 1번부터 10번까지 다음을 잘 듣고 풀어주세요</h5><a class="mt-4  " href=""><svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-file-earmark-music" viewBox="0 0 16 16">
                    <path d="M11 6.64a1 1 0 0 0-1.243-.97l-1 .25A1 1 0 0 0 8 6.89v4.306A2.572 2.572 0 0 0 7 11c-.5 0-.974.134-1.338.377-.36.24-.662.628-.662 1.123s.301.883.662 1.123c.364.243.839.377 1.338.377.5 0 .974-.134 1.338-.377.36-.24.662-.628.662-1.123V8.89l2-.5V6.64z"/>
                    <path d="M14 14V4.5L9.5 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2zM9.5 3A1.5 1.5 0 0 0 11 4.5h2V14a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h5.5v2z"/>
                  </svg></a></div>
                  <div class="form-group row mt-4">
                    <%-- 문제답항 비어있을때 --%>
                    
                     <!-- Prob1 -->
                    <c:forEach items="${resultMap}" var="resultData" varStatus="loop">
                      <div class="mb-3">
                        
                        <div >${resultData.QUESTION}</div>
                        <div class="mt-3">
                        <c:set var="QUESTION_NUM" value="${resultData.QUESTION_UID}" />
                        <c:if test="${QUESTION_NUM eq 'TQ01'}">
                        <img src="https://user-images.githubusercontent.com/115060986/220815179-4f9856af-42c8-457a-8724-0cef5133adea.JPG" alt="" class="w-100">
                        </c:if>
                        <c:if test="${QUESTION_NUM eq 'TQ02'}">
                        <img src="https://user-images.githubusercontent.com/115060986/220815182-442d5f82-ac8a-42eb-bb02-6a8ea2db9986.JPG" alt="" class="w-100">
                        </c:if>
                        </div>
                        <div class="input-group-prepend d-flex justify-content-around mt-3">
                          <div class="w-25">
                            <label for="${resultData.QUESTION_UID}a1">
                              <input type="radio" required id="${resultData.QUESTION_UID}a1" name="${resultData.QUESTION_UID}" value="${resultData.QUESTION_UID}a1" aria-label="Radio button for following text input">
                              ${resultData.ANSWER1}
                            </label>
                          </div>
                          <div class="w-25">
                            <label for="${resultData.QUESTION_UID}a2">
                              <input type="radio" id="${resultData.QUESTION_UID}a2" name="${resultData.QUESTION_UID}" value="${resultData.QUESTION_UID}a2" aria-label="Radio button for following text input">
                              ${resultData.ANSWER2}
                            </label>
                          </div>
                          <div class="w-25">
                            <label for="${resultData.QUESTION_UID}a3">
                              <input type="radio" id="${resultData.QUESTION_UID}a3" name="${resultData.QUESTION_UID}" value="${resultData.QUESTION_UID}a3" aria-label="Radio button for following text input">
                              ${resultData.ANSWER3}
                            </label>
                          </div>
                          <div class="w-25">
                            <label for="${resultData.QUESTION_UID}a4">
                              <input type="radio" id="${resultData.QUESTION_UID}a4" name="${resultData.QUESTION_UID}" value="${resultData.QUESTION_UID}a4" aria-label="Radio button for following text input">
                              ${resultData.ANSWER4}
                            </label>
                          </div>
                        </div>
                      </div>
                    </c:forEach>
                  </div>
                   
                  <!-- btn -->
                  <div class="d-flex justify-content-end">
                    <button class="btn btn-primary w-25 mt-5 mb-5" type="submit">제출하고 점수 확인하기</button>
                  </div>
                </form>
              </div>
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
    <!-- SCRIPT -->
    <script src="https://cdn.jsdelivr.net/npm/admin-lte@3.1/dist/js/adminlte.min.js"></script>
  </body>
</html>
