<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file= "/WEB-INF/views/main/header.jsp" %>

    <div class="container">
      <hr />

      <!--  -->
      <div class="text-center container">
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
          <!-- 본문  -->
          <div class="container col m-3">
            <div class="mt-5 mb-5">
              <div class="h1 mt-4 mb-4">강좌 신청하기</div>
              <c:forEach items="${resultMap}" var="resultData" varStatus="loop">
                <div class="mt-5 mb-5">
                <div class="card border-primary">
                  <div class="row no-gutters">
                    <div class="col-4">
                      <img
                        class="card-img h-100"
                        src="${resultData.LECTURE_IMAGE}"
                        alt="Card image cap"
                      />
                    </div>
                    <div class="col-8">
                      <div class="card-body border-primary">
                        <div class="card-text">
                          <h3>${resultData.LECTURE_TITLE}</h3>
                          <div class="card-text">
                            ${resultData.LECTURE_INTRO}
                          </div>
                          <div class="d-flex flex-row-reverse">
                            <form action="/lecture/lecture_poll/${resultData.LECTURE_NUMBER}" method="get">
                              <button class="btn btn-primary mt-4">무료수강신청하기</button>
                            </form>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
                </c:forEach>

                <div class="pagination justify-content-center mt-5 mb-5">
                  <a href="" class="page-item page-link disabled">Prev</a>
                  <a href="" class="page-item page-link">1</a>
                  <a href="" class="page-item page-link">2</a>
                  <a href="" class="page-item page-link active">3</a>
                  <a href="" class="page-item page-link">4</a>
                  <a href="" class="page-item page-link">Next</a>
                </div>
              </div>
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
