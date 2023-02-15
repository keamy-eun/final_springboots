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
              src="./EJ_logoedit.png"
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
            <div class="text-start">
              <h2>영어실력 테스트</h2>
              <!-- <ul class="dropdown-menu">
                <a href="" class="dropdown-item"
                  >누구나 할수있는 8주 영어문법 마스터</a
                >
                <a href="" class="dropdown-item">850점 토익챌린지</a>
                <a href="" class="dropdown-item">직장인 비즈니스 중국어</a>
              </ul> -->
            </div>

            <!-- 게시판 테이블 -->
            <div class="col text-start">
              <div class="mt-4 mb-4">
                <form class="" action="" method="get">
                  <!-- title -->
                  <h1 class="pb-3"></h1>
      
                  <div class="mt-4"><h5>간단한 실력 알아보기 문제입니다.</h5></div>
                  <div><h5>문항은 총 20문항으로 이루어져있으며, 처음 10문항은 듣기 문제로 이루어져있습니다.</h5></div>
                  <div><h5>재생버튼을 클릭하시고 1번부터 10번까지 다음을 잘 듣고 풀어주세요</h5><a class="mt-4  " href=""><svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-file-earmark-music" viewBox="0 0 16 16">
                    <path d="M11 6.64a1 1 0 0 0-1.243-.97l-1 .25A1 1 0 0 0 8 6.89v4.306A2.572 2.572 0 0 0 7 11c-.5 0-.974.134-1.338.377-.36.24-.662.628-.662 1.123s.301.883.662 1.123c.364.243.839.377 1.338.377.5 0 .974-.134 1.338-.377.36-.24.662-.628.662-1.123V8.89l2-.5V6.64z"/>
                    <path d="M14 14V4.5L9.5 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2zM9.5 3A1.5 1.5 0 0 0 11 4.5h2V14a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h5.5v2z"/>
                  </svg></a></div>
                  <div class="form-group row mt-4">
                     <!-- Prob1 -->
                     <div class="mb-3">
                      <div >1. Mark your answer on your answer sheet</div>
                      <div class="mt-3"><img src="./prob1.JPG" alt="" class="w-100"></div>
                      <div class="input-group-prepend d-flex justify-content-around mt-3">
                        <div class="w-25">
                          <label for="p1a1">
                            <input type="radio" id="p1a1" name="Prob1" aria-label="Radio button for following text input">
                            (A)
                          </label>
                        </div>
                        <div class="w-25">
                          <label for="p1a2">
                            <input type="radio" id="p1a2" name="Prob1" aria-label="Radio button for following text input">
                            (B)
                          </label>
                        </div>
                        <div class="w-25">
                          <label for="p1a3">
                            <input type="radio" id="p1a3" name="Prob1" aria-label="Radio button for following text input">
                            (C)
                          </label>
                        </div>
                        <div class="w-25">
                          <label for="p1a4">
                            <input type="radio" id="p1a4" name="Prob1" aria-label="Radio button for following text input">
                            (D)
                          </label>
                        </div>
                      </div>
                    </div>
                     <!-- Prob2 -->
                     <div class="mb-3">
                      <div >2. Mark your answer on your answer sheet</div>
                      <div class="mt-3"><img src="./prob2.JPG" alt="" class="w-100"></div>
                      <div class="input-group-prepend d-flex justify-content-around mt-3 text-start">
                        <div class="w-25">
                          <label for="p2a1">
                            <input type="radio" id="p2a1" name="Prob2" aria-label="Radio button for following text input">
                            (A)
                          </label>
                        </div>
                        <div class="w-25">
                          <label for="p2a2">
                            <input type="radio" id="p2a2" name="Prob2" aria-label="Radio button for following text input">
                            (B)
                          </label>
                        </div>
                        <div class="w-25">
                          <label for="p2a3">
                            <input type="radio" id="p2a3" name="Prob2" aria-label="Radio button for following text input">
                            (C)
                          </label>
                        </div>
                        <div class="w-25">
                          <label for="p2a4">
                            <input type="radio" id="p2a4" name="Prob2" aria-label="Radio button for following text input">
                            (D)
                          </label>
                        </div>
                      </div>
                    </div>
                    
                    <!-- Prob3 -->
                    <div class="mb-3">
                      <div >3. What will the speakers mainly talk about?</div>
                      <div class="input-group-prepend d-flex justify-content-around mt-3">
                        <div class="w-25">
                          <label for="p3a1">
                            <input type="radio" id="p3a1" name="Prob3" aria-label="Radio button for following text input">
                            (A)Man's political view
                          </label>
                        </div>
                        <div class="w-25">
                          <label for="p3a2">
                            <input type="radio" id="p3a2" name="Prob3" aria-label="Radio button for following text input">
                            (B)Man's future plan
                          </label>
                        </div>
                        <div class="w-25">
                          <label for="p3a3">
                            <input type="radio" id="p3a3" name="Prob3" aria-label="Radio button for following text input">
                            (C)Man's academic career
                          </label>
                        </div>
                        <div class="w-25">
                          <label for="p3a4">
                            <input type="radio" id="p3a4" name="Prob3" aria-label="Radio button for following text input">
                            (D)Man's professional backgroud
                          </label>
                        </div>
                      </div>
                    </div>
                    <!-- Prob4 -->
                    <div class="mb-3">
                      <div >4. What does the woman say about the stories about change?</div>
                      <div class="input-group-prepend d-flex justify-content-around mt-3">
                        <div class="w-25">
                          <label for="p4a1">
                            <input type="radio" id="p4a1" name="Prob4" aria-label="Radio button for following text input">
                            (A) They might be true
                          </label>
                        </div>
                        <div class="w-25">
                          <label for="p4a2">
                            <input type="radio" id="p4a2" name="Prob4" aria-label="Radio button for following text input">
                            (B) They upset her
                          </label>
                        </div>
                        <div class="w-25">
                          <label for="p4a3">
                            <input type="radio" id="p4a3" name="Prob4" aria-label="Radio button for following text input">
                            (C) They suprised her
                          </label>
                        </div>
                        <div class="w-25">
                          <label for="p4a4">
                            <input type="radio" id="p4a4" name="Prob4" aria-label="Radio button for following text input">
                            (D) They are false
                          </div>
                        </label>
                      </div>
                    </div>
                    <!-- Prob5 -->
                    <div class="mb-3">
                      <div >5. What is the woman's main purpose in calling?</div>
                      <div class="input-group-prepend d-flex justify-content-around mt-3">
                        <div class="w-25">
                          <label for="p5a1">
                            <input type="radio" id="p5a1" name="Prob5" aria-label="Radio button for following text input">
                            (A) To arrange for the car
                          </label>
                        </div>
                        <div class="w-25">
                          <label for="p5a2">
                            <input type="radio" id="p5a2" name="Prob5" aria-label="Radio button for following text input">
                            (B) To tell the man
                          </label>
                        </div>
                        <div class="w-25">
                          <label for="p5a3">
                            <input type="radio" id="p5a3" name="Prob5" aria-label="Radio button for following text input">
                            (C) man's credit card number
                          </label>
                        </div>
                        <div class="w-25">
                          <label for="p5a4">
                            <input type="radio" id="p5a4" name="Prob5" aria-label="Radio button for following text input">
                            (D) the work will be finished
                          </label>
                        </div>
                      </div>
                    </div>
                    <!-- Prob6 -->
                    <div class="mb-3">
                      <div >6. Trebelers can earn reward points ______ than ever before with the new Perspectiva Plus credit card.</div>
                      <div class="input-group-prepend d-flex justify-content-around mt-3">
                        <div class="w-25">
                          <label for="p6a1">
                            <input type="radio" id="p6a1" name="Prob6" aria-label="Radio button for following text input">
                            (A) quick
                          </label>
                        </div>
                        <div class="w-25">
                          <label for="p6a2">
                            <input type="radio" id="p6a2" name="Prob6" aria-label="Radio button for following text input">
                            (B) quickly
                            
                          </label>
                        </div>
                        <div class="w-25">
                          <label for="p6a3">
                            <input type="radio" id="p6a3" name="Prob6" aria-label="Radio button for following text input">
                            (C) more quickly
                            
                          </label>
                        </div>
                        <div class="w-25">
                          <label for="p6a4">
                            <input type="radio" id="p6a4" name="Prob6" aria-label="Radio button for following text input">
                            (D) most quickly
                            
                          </label>
                        </div>
                      </div>
                    </div>
                    <!-- Prob7 -->
                    <div class="mb-3">
                      <div >7. The doctor's _____ to Mr. Ellsworth was that he should exercise more to keep his wight down</div>
                      <div class="input-group-prepend d-flex justify-content-around mt-3">
                        <div class="w-25">
                          <label for="p7a1">
                            <input type="radio" id="p7a1" name="Prob7" aria-label="Radio button for following text input">
                            (A) method
                          </label>
                        </div>
                        <div class="w-25">
                          <label for="p7a2">
                            <input type="radio" id="p7a2" name="Prob7" aria-label="Radio button for following text input">
                            (B) concern
                          </label>
                        </div>
                        <div class="w-25">
                          <label for="p7a3">
                            <input type="radio" id="p7a3" name="Prob7" aria-label="Radio button for following text input">
                            (C) relief
                          </label>
                        </div>
                        <div class="w-25">
                          <label for="p7a4">
                            <input type="radio" id="p7a4" name="Prob7" aria-label="Radio button for following text input">
                            (D) advice
                          </label>
                        </div>
                      </div>
                    </div>
                   
                    

                  <!-- btn -->
                  <div class="d-flex justify-content-end">
                    <a class="btn btn-primary w-25 mt-5 mb-5" href="/mypage_selfTestResult">제출하고 점수 확인하기</a>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- footer -->
      <footer class="m-5">
        <div>
          <img src="./EJ_logo.png" width="50" height="50" alt="" />
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
