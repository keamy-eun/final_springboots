<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file= "/WEB-INF/views/main/header.jsp" %>
<div class="container">
<hr />

      <!-- -------------------------- -->
      <div class="text-center container-fluid">
        <div class="row">
          <!--  -->
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
            <!--  -->
            <div class="container col-7 mt-5">
              

              <!-- 게시판 테이블 -->
              <table class="table text-start">
                <div class="row mb-3 bg-warning bg-opacity-10 p-3 border border-0 rounded-5">
                <div class="col-3 h4"><a href="#" style="text-decoration: none;" class="text-black">강사게시판</a> </div>
               
              </div>
              <!-- 글쓰기 -->
              <div class="mb-3 text-end">
                <button class="border btn">
                  <a
                    href="/community_postingLecturer"
                    class="text-black"
                    style="text-decoration: none"
                    >글쓰기</a
                  >
                </button>
              </div>
                  <tr>
                    <th>NO</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>작성일</th>
                    <th>조회수</th>
                  </tr>
                
               <tbody>
               <%-- foreach로 모두 꺼내서 출력 --%>
                <c:forEach items="${resultMap}" var="resultData" varStatus="loop">
                  <tr class="line">
                    <td class="post">${resultData.POST_NUMBER}</td>
                    <td>${resultData.COMMUNITY_TITLE}</td>
                    <td>${resultData.MEMBER_ID}</td>
                    <td>${resultData.COMMUNITY_DATE}</td>
                    <td>${resultData.VIEW_COUNT}</td>
                  </tr>
                 
                </c:forEach>
                </tbody>
              </table>

              

                <!-- 페이징 -->
                <div class="text-center">
                  <button class="btn">이전</button>
                  <button class="btn">1</button>
                  <button class="btn">2</button>
                  <button class="btn">3</button>
                  <button class="btn">4</button>
                  <button class="btn">다음</button>
                </div>
                <div class="input-group input-group-sm mt-3">
                  <input
                    type="text"
                    name="table_search"
                    class="form-control float-right"
                    placeholder="Search"
                  />
  
                  <button type="submit" class="btn btn-default border">
                    검색
                  </button>
                </div>
              </div>
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
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/admin-lte@3.1/dist/js/adminlte.min.js"></script>
    <script>
      $(document).on('click','.line',function(){
        let community_title = $(this).children('.post').text();
        location.href = "/community_post/"+community_title;
      });

      $(document).on('mouseover','.line',function(){
        $('.line').css('padding','none');
        $(this).css('padding','0.5px solid lightgrey');
      });
    </script>
  </body>
</html>
