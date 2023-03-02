<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>게시글 작성</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
    
  </head>
  <body>
    <div class="container">
    <!-- -------------------- -->
    <!-- navbar -->
    <%@ include file= "/WEB-INF/views/main/header.jsp" %>
    <hr />
<%-- --%>
    <!-- -------------------------- -->
    <div class="container-fluid">
      <div class="row">
        <!-- Sidebar -->
        <div class="col-auto wrapper border border-1 m-3 p-3 text-center">
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
        
        <div class="col-6 mt-5 ms-5 text-center">
          <!-- 제목 -->
          <h1 class="mb-5">게시글 작성</h1>
          <form action="/community_student" method="post" class="form-group">
        <%-- 글쓰기 누른 페이지별로 추가하는법...어떻게하지 --%>
        <%-- 방법이 떠오르지 않는다면 페이지별로 글쓰기 JSP를 만들면 가능하긴 하다.. --%>
          <%-- 우선은 student로 가도록 해두었다. --%>
            <!--  -->
            <div class="text-start input-group">
              <label class="input-group-text" for="community_title">게시글 제목</label>
              <input type="text" id="community_title" class="form-control" name="community_title" required/>
            </div>
                       
              <div class="mt-3">
              
                <select class="form-select col-" id="community_number" name="community_number" placeholder="">
                  <option selected value="C01">강좌 게시판</option>
                  <option value="C02">강사 게시판</option>
                  <option value="C03">학생 게시판</option>
                  <option value="C04">공지사항</option>
                </select>
               
           
            <!--  -->
            <div class="input-group mb-3 mt-3">
              <div class="input-group-prepend">
                <span class="input-group-text me-1">Upload</span>
              </div>
              <div class="custom-file">
                <input type="file" class="custom-file-input form-control" id="file_Attachiment" name="file_Attachiment">
                <label class="custom-file-label form-file" for="file_Attachiment"></label>
              </div>
            </div>


            <div class="input-group">
              <textarea rows="20" class="form-control" aria-label="With textarea" placeholder="내용입력" id="community_content" name="community_content" ></textarea>
            </div>
            <div class="d-flex justify-content-end mt-3">
              <button type="submit" class="btn btn-secondary btn-lg active">
                 게시글 작성
              </button>
              <%-- <a href="/community_post" class="btn btn-secondary btn-lg active" role="button" aria-pressed="true">게시글 작성</a> --%>
                
            </div>
          </div>
          </form>
          
<div class="m-5"></div>
        <!--  -->
      </div>
      <!-- footer -->
      <%@ include file= "/WEB-INF/views/main/footer.jsp" %>
    </div>
  </div>

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>