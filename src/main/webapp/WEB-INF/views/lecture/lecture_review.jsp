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
                    <c:forEach items="${resultMap.resultList}" var="resultData" varStatus="loop">
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
          <nav aria-label="Page navigation example">
            <c:set var="_pagination" value="${resultMap.paginations}" />
              <span>전체 게시물 수 : ${_pagination.totalCount}</span>
              <ul class="pagination">
                <li class="page-item">
                  <a class="page-link" href="/lecture/lecture_review_pagination/${_pagination.previousPage}" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                    <span class="sr-only"></span>
                  </a>
                </li>
              <c:forEach var="pageNum" begin="${_pagination.blockStart}" end="${_pagination.blockEnd}" varStatus="loop">
                <c:set var="color" value="" />
                <c:if test="${1 eq pageNum}">
                    <c:set var="color" value="bg-secondary bg-opacity-25" />
                </c:if>
                <li class="page-item"><a class="page-link ${color}" href="/lecture/lecture_review_pagination/${pageNum}">${pageNum}</a></li>
              </c:forEach>
              <li class="page-item">
                <a class="page-link" href="/lecture/lecture_review_pagination/${_pagination.nextPage}" aria-label="Next">
                  <span aria-hidden="true">&raquo;</span>
                  <span class="sr-only"></span>
                </a>
              </li>
              </ul>
            </nav>


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
