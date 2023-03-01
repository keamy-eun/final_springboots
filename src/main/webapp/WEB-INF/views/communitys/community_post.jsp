<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%-- 게시글 댓글기능만 남음 --%>
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
    <link rel="stylesheet" href="/css/commons.css" />
  </head>
  <body>
    <div class="container">
      <!-- -------------------- -->
      <!-- navbar -->
      <div class="m-5 mb-2">
        <div class="d-flex justify-content-end">
          <a
            href="/main_login"
            class="btn btn-link btn-outline-info text-dark text-decoration-none me-3"
            >로그인</a
          >
          <a
            href="/main_signUp"
            class="btn btn-link btn-outline-info text-dark text-decoration-none me-3"
            >회원가입</a
          >
        </div>
        <!-- menu bar -->
        <div class="d-flex justify-content-around">
          <!-- logo -->
          <a href="/main">
            <img
              src="https://user-images.githubusercontent.com/115060986/219259405-a08ffba7-6cbb-4a65-b3d1-a8a456b811b6.png"
              width="230"
              height="90"
              class="me-5"
              alt=""
            />
          </a>
          <a
            href="/introduction_academy"
            class="mt-5 mb-5 btn btn-link btn-outline-warning text-dark text-decoration-none w-100 fs-5 fw-bold"
          >
            학원안내</a
          >
          <a
            href="/lecture_signup_list"
            class="mt-5 mb-5 btn btn-link btn-outline-warning text-dark text-decoration-none w-100 fs-5 fw-bold"
          >
            온라인강의</a
          >
          <a
            href="/community_student"
            class="mt-5 mb-5 btn btn-link btn-outline-warning text-dark text-decoration-none w-100 fs-5 fw-bold"
          >
            커뮤니티</a
          >
          <a
            href="/mypage_Lecture"
            class="mt-5 mb-5 btn btn-link btn-outline-warning text-dark text-decoration-none w-100 fs-5 fw-bold"
          >
            마이페이지</a
          >
          <a
            href="/admin_member"
            class="mt-5 mb-5 btn btn-link btn-outline-warning text-dark text-decoration-none w-100 fs-5 fw-bold"
          >
            관리자페이지</a
          >
        </div>
      </div>
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
      <footer class="m-5">
        <div>
          <img src="https://user-images.githubusercontent.com/115060986/219259301-39328314-70ed-4993-ba31-b11e987b1218.png" width="50" height="50" alt="" />
          <span class="opacity-50"> 은정 아카데미</span>
          <span class="ms-4 opacity-50">
            언어교육에 열정을 가진 사람들의 모임
          </span>
        </div>
        <div></div>
        <hr />
        <div class="h6 opacity-75">
          회사소개 | 인재채용 | 제휴제안 | 이용약관개인정보처리방침 |
          정책고객센터 | ⓒ EJ Corp
        </div>
        <hr />
        <div>
          <span class="opacity-75">찾아오시는 길 : </span>
          <a
            href="https://www.google.co.kr/maps/place/KH%EC%A0%95%EB%B3%B4%EA%B5%90%EC%9C%A1%EC%9B%90/data=!3m1!4b1!4m5!3m4!1s0x357c9ec255555555:0x3565475c3365c5bb!8m2!3d37.498993!4d127.032909?hl=ko"
          >
            서울특별시 강남구 테헤란로 123길 456 은정이어학원 2F
          </a>
          / 지하철 2호선 역삼역 3번출구
        </div>
        <div>
          <span class="opacity-75">Git address :</span>
          <a href="https://github.com/keamy-eun/toy_servletsWithDB">
            github.com/keamy-eun/toy_servletsWithDB.git</a
          >
        </div>
        <div class="opacity-75">
          Email address : anxi0015@gmail.com / eun.wonki014@gmail.com /
          jhun1020.kh@gmail.com
        </div>
      </footer>
    </div>

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>