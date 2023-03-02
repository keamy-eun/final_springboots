<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file= "/WEB-INF/views/main/header.jsp" %>
<div class="container">
<hr />

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
                    href="/introduction_academy"
                    target="_self"
                    class="text-decoration-none text-secondary"
                    >학원소개</a
                  >
                </li>
                <li class="border-top border-1 p-2">
                  <a
                    href="/introduction_learning"
                    target="_self"
                    class="text-decoration-none text-secondary"
                    >학습소개</a
                  >
                </li>
                <li class="border-top border-1 p-2">
                  <a
                    href="/introduction_enroll"
                    target="_self"
                    class="text-decoration-none text-secondary"
                    >입학안내</a
                  >
                </li>
                <li class="border-top border-1 p-2">
                  <a
                    href="/introduction_location"
                    target="_self"
                    class="text-decoration-none text-secondary"
                    >학원위치</a
                  >
                </li>
              </ul>
            </nav>
          </div>
          <div class="col-auto container p-5">
            <div>
              <h1>학원위치</h1>
              <br />
              <table class="table table-striped-column table-bordered">
                <tr>
                  <td class="">주소</td>
                  <td>서울특별시 강남구 테헤란로 123길 456 은정이어학원 2F</td>
                </tr>
                <tr>
                  <td>버스</td>
                  <td>
                    <div>역삼역.포스코P&S타워 정류장</div>
                    <div>
                      지선 146 / 740 / 341 / 360 간선 1100 / 1700 / 2000 / 7007
                      / 8001
                    </div>
                  </td>
                </tr>
                <tr>
                  <td>지하철</td>
                  <td>지하철 2호선 역삼역 3번출구 100m</td>
                </tr>
              </table>
            </div>
            <script src="chrome-extension://ecmeogcbcoalojmkfkmancobmiahaigg/content_script/content_script.js"></script>
          </div>
        </div>
      </div>
      <!-- footer -->
      <%@ include file= "/WEB-INF/views/main/footer.jsp" %>
    </div>
  </body>
</html>
