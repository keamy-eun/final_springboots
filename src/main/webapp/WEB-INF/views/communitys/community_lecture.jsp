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
            <div class="container col-9">
              
              <!-- 본문  -->
          <div class="container col m-3">
            <div class="mt-5 mb-5">
              <div class="h1 mt-4 mb-4">강의 게시판</div>
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
                            <div class="line">
                              <div class="post btn btn-primary mt-4">강의듣기</div>
                              
                            </div>
                            <%-- 
                            <form action="/community_post/${resultData.LECTURE_NUMBER}" method="get">
                              <button class="btn btn-primary mt-4">강의듣기</button>
                            </form> 
                            --%>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
                </c:forEach>

              <%-- 페이징 --%>
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

          <%-- ----------- --%>

              <%-- <!-- 게시판 테이블 -->
              <table class="table text-start">
                <div class="row mb-3 bg-warning bg-opacity-10 p-3 border border-0 rounded-5">
                <div class="col-3 h4"><a href="#" style="text-decoration: none;" class="text-black">강사게시판</a> </div>
               
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
                    <tr>
                      <th>NO</th>
                      <th>제목</th>
                      <th>작성자</th>
                      <th>작성일</th>
                      <th>조회수</th>
                    </tr>

                  <tbody>
                    <tr>
                      <td>4</td>
                      <td>특강 강사 필수 연수 목록</td>
                      <td>이은정</td>
                      <td>2023-01-12</td>
                      <td>420</td>
                    </tr>
                    <tr>
                      <td>3</td>
                      <td>겨울방학 특강 운영 및 안전관리 연수자료</td>
                      <td>이훈정</td>
                      <td>2023-01-11</td>
                      <td>233</td>
                    </tr>
                    <tr>
                      <td>2</td>
                      <td>성범죄 조회 동의서(양식)</td>
                      <td>이정훈</td>
                      <td>2023-01-03</td>
                      <td>1242</td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>2023 프로그램 연간계획서</td>
                      <td>이정훈</td>
                      <td>2023-01-03</td>
                      <td>231</td>
                    </tr>
                  </tbody>
              </table> --%>

              

                <!-- 페이징 -->
                <%-- <div class="text-center">
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
                  </button> --%>
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
        location.href = "/community_lecturepost/"+community_title;
      });

      // $(document).on('mouseover','.line',function(){
      //   $('.line').css('padding','none');
      //   $(this).css('padding','0.5px solid lightgrey');
      // });
    </script>
  </body>
</html>