<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file= "/WEB-INF/views/main/header.jsp" %>

    <div class="container">
      <hr />

      <div class="text-center container-fluid">
        <div class="row">
          <!-- Sidebar -->
          <div class="col-auto wrapper border border-1 m-3 p-3">
            <nav id="sidebar text-start">
              <div class="text-secondary">
                <h3>은정이 아카데미</h3>
              </div>
              <ul class="list-unstyled components fs-5">
                <li class="border-top border-1 p-2">
                  <a
                    href="/lecture_signup_list"
                    target="_self"
                    class="text-decoration-none text-secondary"
                    >온라인 강의 신청</a
                  >
                </li>
                <li class="border-top border-1 p-2">
                  <a
                    href="/lecture_review"
                    target="_self"
                    class="text-decoration-none text-secondary"
                    >온라인 강의 후기</a
                  >
                </li>
              </ul>
            </nav>
          </div>
          <div class="container col-7 mt-5">
            <!-- 게시판 테이블 -->
            <table class="table text-start">
              <div class="row mb-3 bg-warning bg-opacity-10 p-3 border border-0 rounded-5">
              <div class="text-center h3">온라인 강의 후기</div>
              
            </div>
            <!-- 글쓰기 -->
            <div class="mb-3 text-end">
              <button class="border btn">
                <a
                  href="/community_posting"
                  class="text-black"
                  style="text-decoration: none"
                  >글쓰기</a
                >
              </button>
            </div>
                <tr class="text-center">
                  <th class="p-0 pb-3">NO</th>
                  <th class="p-0">제목</th>
                  <th class="p-0">작성자</th>
                  <th class="p-0">작성일</th>
                  <th class="p-0">조회수</th>
                </tr>
                  <tbody>
                    <c:forEach items="${resultMap}" var="resultData" varStatus="loop">
                      <tr>
                        <td>${resultData.POST_NUMBER}</td>
                        <td>
                          <form action="/community_post/${resultData.POST_NUMBER}" method="get">
                            <button class="btn btn-link viewPopup text-decoration-none text-black">${resultData.COMMUNITY_TITLE} [${resultData.cmt_cnt}]</button>
                          </form>
                        </td>
                        <td>${resultData.MEMBER_ID}</td>
                        <td>${resultData.COMMUNITY_DATE}</td>
                        <td>${resultData.VIEW_COUNT}</td>
                      </tr>
                    </c:forEach>
                  </tbody>
            </table>
                      <!-- 페이징 -->
          <div class="container text-center">
            <button class="btn">이전</button>
            <button class="btn">1</button>
            <button class="btn">2</button>
            <button class="btn">3</button>
            <button class="btn">4</button>
            <button class="btn">5</button>
            <button class="btn">다음</button>
          </div>
          </div>
        </div>


        </div>
      </div>
      <%@ include file= "/WEB-INF/views/main/footer.jsp" %>

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
    <!-- SCRIPT -->
    <script src="https://cdn.jsdelivr.net/npm/admin-lte@3.1/dist/js/adminlte.min.js"></script>
  </body>
</html>
