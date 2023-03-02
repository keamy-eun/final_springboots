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
            <hr class="opacity-100" />

          
            <div>
              <iframe
                width="560"
                height="315"
                src="https://www.youtube.com/embed/pSUydWEqKwE"
                title="YouTube video player"
                frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                allowfullscreen
                class="m-3"
              ></iframe>
            </div>
            <%-- 게시글 내용 --%>
            ${map.COMMUNITY_CONTENT}
            <!-- 댓글 -->
<%-- ---------------- --%>
  <div>연습</div>



  <%--  --%>
  <%-- ------------ --%>
              
              
              <%-- <c:set var="practice" value="${resultComment[number]['MEMBER_NAME']}"/> --%>
            <div class="" style="width: 50rem">
                <%-- 반복부분 start --%>
           <%-- <div class="mb-1 mt-1 border border-opacity-50 border-left-0 border-right-0">
                <span class="text-black text-opacity-75">${map_comment.MEMBER_NAME}</span>
                <span class="opacity-50">${map_comment.COMMENT_DATE}</span>
                <div>${map_comment.COMMENT_CONTENT}</div>
                </div> --%>
              <%-- <div>${practice}</div> --%> 
                  <%--varstatus에 현재 index있음 => 0부터 시작 count 1부터시작--%>
              <c:forEach items="${resultComment}" var="map_comment" varStatus="loop" >
              <div class="mb-1 mt-1 border border-opacity-50 border-left-0 border-right-0">
              <span class="text-black text-opacity-75">${map_comment.MEMBER_NAME}</span>
              <span class="opacity-50">${map_comment.COMMENT_DATE}</span>
              <div>${map_comment.COMMENT_CONTENT}</div>  
              <div>${loop.count}</div>
              </div>

              </c:forEach>
                    <%-- 반복부분 end --%>

             
              <div class="row mt-3">
                <input
                  type="text"
                  class="col-9 ms-2"
                  placeholder="댓글을 입력하세요"
                />
                <button class="btn col-2 ms-5 btn-primary opacity-50">
                  작성
                </button>
              </div>
              <hr />
            </div>
          </div>


          <!--  -->

          <p class="text-black opacity-25">
            그림출처 :
            https://engoo.co.kr/blog/%EA%B8%B0%EC%B4%88%EC%98%81%EC%96%B4%EB%AC%B8%EB%B2%95-%EC%9E%90%EC%A3%BC-%ED%97%B7%EA%B0%88%EB%A6%AC%EB%8A%94-%EC%98%81%EC%96%B4-%EB%AC%B8%EB%B2%95-5%EA%B0%80%EC%A7%80/
          </p>
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