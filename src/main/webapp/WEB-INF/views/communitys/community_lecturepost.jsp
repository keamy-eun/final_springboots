<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%-- 게시글 댓글기능만 남음 --%>
<%@ include file= "/WEB-INF/views/main/header.jsp" %>
<div class="container">
<hr />

      <!-- -------------------------- -->
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
                      href="/community_student"
                      class="text-decoration-none text-secondary"
                      >학생 커뮤니티</a
                    >
                  </li>
                  <li class="border-top border-1 p-2">
                    <a
                      href="/community_lecturer"
                      class="text-decoration-none text-secondary"
                      >강사 게시판</a
                    >
                  </li>
                </ul>
              </nav>
            </div>
          <!-- 게시글 -->
          <div class="container col-7 mt-5 text-start">
                <%-- 제목  --%>
              <c:set var="map" value="${resultMap[0]}"/>
            <%-- <div class="fs-1">${map}</div>  확인용--%>
            <div class="fs-1">${map.COMMUNITY_TITLE}</div>
      

            
            <%-- <c:if test="${board.title eq paramTitle}">
             ${board.title}
            </c:if>
            --%>
        
            <div>
              <iframe width="560" height="315" src="https://www.youtube.com/embed/IcFD_MKHa7M" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
            </div>
            <%-- 게시글 내용 --%>
            ${map.COMMUNITY_CONTENT}
     

          </div>
          <!--  -->

         
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