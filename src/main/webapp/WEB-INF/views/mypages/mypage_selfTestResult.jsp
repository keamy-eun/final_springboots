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

      <!-- -------------------------- -->
      <div class="text-center container-fluid">
        <div class="row">
          <!--  -->
          <!-- Sidebar -->
          <div class="col-auto wrapper border border-1 m-3 p-3">
            <nav id="sidebar">
              <div class="text-secondary">
                <h3>은정이 아카데미</h3>
              </div>
              <ul class="list-unstyled components fs-5">
                <li class="border-top border-1 p-2">
                  <a
                    href="/mypage_Lecture"
                    target="_self"
                    class="text-decoration-none text-secondary"
                    >내 강의보기</a
                  >
                </li>
                <li class="border-top border-1 p-2">
                  <a
                    href="/mypage_signup_lecturelist"
                    target="_self"
                    class="text-decoration-none text-secondary"
                    >수강신청내역</a
                  >
                </li>
                <li class="border-top border-1 p-2">
                  <a
                    href="/mypage_member_edit"
                    target="_self"
                    class="text-decoration-none text-secondary"
                    >개인정보수정</a
                  >
                </li>
                <li class="border-top border-1 p-2">
                  <a
                    href="/mypage_selfTest"
                    target="_self"
                    class="text-decoration-none text-secondary"
                    >영어실력 테스트</a
                  >
                </li>
              </ul>
            </nav>
          </div>

          <!--  -->
          <div class="container col p-5">
            <!--  -->
            <div
              class="modal modal-sheet position-static d-block bg-warning py-5"
              tabindex="-1"
              role="dialog"
              id="modalSheet"
            >
              <div class="modal-dialog" role="document">
                <div class="modal-content rounded-4 shadow">
                  <div class="modal-header border-bottom-0">
                    <h1 class="modal-title fs-5">영어실력 테스트 결과</h1>
                   
                  </div>
                  <div class="modal-body py-0 text-start">
                    <p>
                      <div>
                        <span class="h2">홍길동</span>님의 TOEIC 예상 점수는
                        <span class="h2">${resultMap.resultScore}점</span>입니다
                      </div>
                      <div class="mt-3">
                        <span class="h3 text-primary"
                          >${resultMap.resultCategory}</span
                        >의 문제유형에 약한거 같아요
                      </div>
                      <div class="mt-3">자, 그럼 당신을 위한 무슨 강좌가 있는지 구경하러 가볼까요? </div>
                    </p>
                  </div>
                  <div class="modal-footer flex-column border-top-0">
                    <a href="/lecture_signup_list"
                      class="btn btn-lg btn-success w-100 mx-0 mb-2"
                    >
                      강의목록 확인하러 가기
                  </a>
                    <a href="/main"
                      class="btn btn-lg btn-primary w-100 mx-0"
                    >
                      메인화면으로
                </a>
                  </div>
                </div>
              </div>
            </div>
            <!--  -->
          </div>
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
    <!-- SCRIPT -->
    <script src="https://cdn.jsdelivr.net/npm/admin-lte@3.1/dist/js/adminlte.min.js"></script>
  </body>
</html>
