<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file= "/WEB-INF/views/main/header.jsp" %>

    <div class="container">
    <hr />

    <!--  -->
    <div class=" container-fluid">
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
                href="/lecture/lecture_signup_list"
                target="_self"
                class="text-decoration-none text-secondary"
                >온라인 강의 신청</a
              >
            </li>
            <li class="border-top border-1 p-2">
              <a
                href="/lecture/lecture_review"
                target="_self"
                class="text-decoration-none text-secondary"
                >온라인 강의 후기</a
              >
            </li>
          </ul>
        </nav>
      </div>
      <!-- 본문 -->
      <div class="container col-9">
        <div class="mt-4 mb-4"> 
          <!-- 설문문답 JSTL -->
          <form action="/lecture/lecture_signup" method="post">
            <input type="hidden" name="LECTURE_NUMBER" value="${resultList[3].LECTURE_NUMBER}">
            <h1 class="pb-3">수강신청</h1>
            <div class="fs-3">${resultList[2].MEMBER_NAME} 회원님 안녕하세요!</div>
            <c:forEach items="${resultList[0]}" var="Que" varStatus="loop">
              <c:if test="${Que.ORDERS eq '1' || Que.ORDERS eq '2' || Que.ORDERS eq '3'}">
              <label class="mt-4 mb-3">${Que.ORDERS}. ${Que.QUESTION}</label>
                <div class="col">
                  <select name="${Que.QUESTION_UID}" id="" class="form-control">
                    <option class="text-secondary" selected>선택</option>
                      <c:forEach items="${resultList[1]}" var="Ans" varStatus="loop">
                        <c:if test="${Que.QUESTION_UID eq Ans.QUESTION_UID}">
                          <option>${Ans.ANSWER}</option>
                        </c:if>
                      </c:forEach>
                    </select>
                  </div>
              </c:if>
              <c:if test="${Que.ORDERS eq '1-1' || Que.ORDERS eq '4'}">
                <div class="mt-4 mb-2">
                  <label class="mt-4 mb-3"
                    >${Que.ORDERS}. ${Que.QUESTION}</label
                  >
                  <input class="form-control mt-3" type="text" name="${Que.QUESTION_UID}"  />
                </div>
              </c:if>
            </c:forEach>


            <div class="form-group row">
            <!-- btn -->
            <div class="d-flex justify-content-end">
              <button class="btn btn-primary w-25 mt-5 mb-5" onclick="alert('수강신청 되었습니다! 마이페이지로 이동할게요')" >
                수강신청하기
              </button>
            </div>
          </form>
        </div>
      </div>
    </div>
    </div>
    <%@ include file= "/WEB-INF/views/main/footer.jsp" %>
  </div>

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
