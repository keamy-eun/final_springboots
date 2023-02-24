<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
  </head>
  <body>
    <div class="container">
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
          href="/community_lecture"
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

    <!--  -->
    <div class=" container-fluid">
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
      <!-- 본문 -->
      <div class="container col-9">
        <div class="mt-4 mb-4"> 
          <!-- 설문문답 JSTL -->
          <form action="/lecture_signup" method="post">
            <input type="hidden" name="LECTURE_NUMBER" value="${resultList[3].LECTURE_NUMBER}">
            <h1 class="pb-3">수강신청</h1>
            <div class="fs-3">${resultList[2].MEMBER_NAME} 회원님 안녕하세요!</div>
            <c:forEach items="${resultList[0]}" var="Que" varStatus="loop">
              <c:if test="${Que.ORDERS eq '1' || Que.ORDERS eq '2' || Que.ORDERS eq '3'}">
              <label class="mt-4 mb-3">${Que.ORDERS}. ${Que.QUESTION}</label>
                <div class="col">
                  <select name="${Que.QUESTION_UID}" id="" class="form-control">
                    <option class="text-secondary" selected>선택</option>
                      <c:forEach items="${resultList[1]}" var="Ans" varStatus="loop">
                        <c:if test="${Que.QUESTION_UID eq Ans.QUESTION_UID}">
                          <option>${Ans.ANSWER}</option>
                        </c:if>
                      </c:forEach>
                    </select>
                  </div>
              </c:if>
              <c:if test="${Que.ORDERS eq '1-1' || Que.ORDERS eq '4'}">
                <div class="mt-4 mb-2">
                  <label class="mt-4 mb-3"
                    >${Que.ORDERS}. ${Que.QUESTION}</label
                  >
                  <input class="form-control mt-3" type="text" name="${Que.QUESTION_UID}"  />
                </div>
              </c:if>
            </c:forEach>

            <div class="form-group row">
            <!-- btn -->
            <div class="d-flex justify-content-end">
              <button class="btn btn-primary w-25 mt-5 mb-5" onclick="alert('수강신청 되었습니다! 마이페이지로 이동할게요')" >
                수강신청하기
              </button>
            </div>
          </form>
        </div>
      </div>
    </div>
    </div>
    <!-- footer -->
    <footer class="m-5 text-start">
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