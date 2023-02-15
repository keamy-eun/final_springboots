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
    <link rel="stylesheet" href="./css/commons.css" />
  </head>
  <body>
    <div class="container">
      <!-- -------------------- -->
      <!-- navbar -->
      <div class="m-5 mb-2">
        <div class="d-flex justify-content-end">
          <a
            href="./main_login.html"
            class="btn btn-link btn-outline-info text-dark text-decoration-none me-3"
            >로그인</a
          >
          <a
            href="./main_signUp.html"
            class="btn btn-link btn-outline-info text-dark text-decoration-none me-3"
            >회원가입</a
          >
        </div>
        <!-- menu bar -->
        <div class="d-flex justify-content-around">
          <!-- logo -->
          <a href="./main.html">
            <img
              src="./EJ_logoedit.png"
              width="230"
              height="90"
              class="me-5"
              alt=""
            />
          </a>
          <a
            href="./introduction_academy.html"
            class="mt-5 mb-5 btn btn-link btn-outline-warning text-dark text-decoration-none w-100 fs-5 fw-bold"
          >
            학원안내</a
          >
          <a
            href="./lecture_signup_list.html"
            class="mt-5 mb-5 btn btn-link btn-outline-warning text-dark text-decoration-none w-100 fs-5 fw-bold"
          >
            온라인강의</a
          >
          <a
            href="./community_lecture.html"
            class="mt-5 mb-5 btn btn-link btn-outline-warning text-dark text-decoration-none w-100 fs-5 fw-bold"
          >
            커뮤니티</a
          >
          <a
            href="./mypage_Lecture.html"
            class="mt-5 mb-5 btn btn-link btn-outline-warning text-dark text-decoration-none w-100 fs-5 fw-bold"
          >
            마이페이지</a
          >
          <a
            href="./admin_member.html"
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
            <nav id="sidebar text-start">
              <div class="text-secondary">
                <h3>은정이 아카데미</h3>
              </div>
              <ul class="list-unstyled components fs-5">
                <li class="border-top border-1 p-2">
                  <a
                    href="./lecture_signup_list.html"
                    target="_self"
                    class="text-decoration-none text-secondary"
                    >온라인 강의 신청</a
                  >
                </li>
                <li class="border-top border-1 p-2">
                  <a
                    href="./lecture_review.html"
                    target="_self"
                    class="text-decoration-none text-secondary"
                    >온라인 강의 후기</a
                  >
                </li>
              </ul>
            </nav>
          </div>

          <!--  -->
          <div class="container col p-5">
            <div class="text-start">
              <h2>누구나 할수있는 8주 영어문법 마스터 게시판</h2>
            </div>
            <!-- 글쓰기 -->
            <div class="mb-3 text-end">
              <button class="border btn">
                <a href="./community_posting.html" class="text-black">글쓰기</a>
              </button>
            </div>

            <!-- 게시판 테이블 -->
            <div class="col text-start">
              <div class="card">
                <div class="card-header">
                  <h3 class="card-title">온라인강의 후기 게시판</h3>
                  <div class="card-tools">
                    <div
                      class="input-group input-group-sm"
                      style="width: 150px"
                    >
                      <input
                        type="text"
                        name="table_search"
                        class="form-control float-right"
                        placeholder="Search"
                      />
                      <div class="input-group-append">
                        <button type="submit" class="btn btn-default">
                          검색
                        </button>
                      </div>
                    </div>
                  </div>
                </div>

                <div class="card-body table-responsive p-0">
                  <table class="table table-hover text-nowrap">
                    <thead>
                      <tr>
                        <th>NO</th>
                        <th>제목</th>
                        <th>작성자</th>
                        <th>작성일</th>
                        <th>조회수</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>5</td>
                        <td>
                          <a href="./community_post.html" class=""
                            >[공지사항] 홈페이지 건의사항이 있다면... [32]</a
                          >
                        </td>
                        <td>관리자</td>
                        <td>2023-01-12</td>
                        <td>12</td>
                      </tr>
                      <tr>
                        <td>4</td>
                        <td>
                          [공지사항] 코로나 관련 결석제출 서류양식입니다 [24]
                        </td>
                        <td>관리자</td>
                        <td>2023-01-12</td>
                        <td>20</td>
                      </tr>
                      <tr>
                        <td>3</td>
                        <td>
                          [공지사항]강사님에게 개인적인 연락은 자제해주세요[19]
                        </td>
                        <!-- <td>Alexander Pierce</td> -->
                        <td>관리자</td>
                        <td>2023-01-11</td>
                        <td>32</td>
                      </tr>
                      <tr>
                        <td>2</td>
                        <td>[질문]used to의 사용법을 잘 모르겠어요 [4]</td>
                        <td>둘리</td>
                        <td>2023-01-03</td>
                        <td>40</td>
                      </tr>
                      <tr>
                        <td>1</td>
                        <td>
                          [고민상담]기초 영어실력을 쌓는데 어떤 강좌가 제일
                          좋을까요? [9]
                        </td>
                        <td>도우너</td>
                        <td>2023-01-02</td>
                        <td>52</td>
                      </tr>
                      <tr>
                        <td>1</td>
                        <td>
                          [강좌 추천]길동 선생님의 영어문법강좌 강추합니다! [6]
                        </td>
                        <td>희동이</td>
                        <td>2023-01-02</td>
                        <td>52</td>
                      </tr>
                      <tr>
                        <td>2</td>
                        <td>[질문]used to의 사용법을 잘 모르겠어요 [4]</td>
                        <td>둘리</td>
                        <td>2023-01-03</td>
                        <td>40</td>
                      </tr>
                      <tr>
                        <td>1</td>
                        <td>
                          [고민상담]기초 영어실력을 쌓는데 어떤 강좌가 제일
                          좋을까요? [9]
                        </td>
                        <td>도우너</td>
                        <td>2023-01-02</td>
                        <td>52</td>
                      </tr>
                      <tr>
                        <td>1</td>
                        <td>
                          [강좌 추천]길동 선생님의 영어문법강좌 강추합니다! [6]
                        </td>
                        <td>희동이</td>
                        <td>2023-01-02</td>
                        <td>52</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>

              <!-- 페이징 -->
              <div class="text-center">
                <button class="btn">이전</button>
                <button class="btn">1</button>
                <button class="btn">2</button>
                <button class="btn">3</button>
                <button class="btn">4</button>
                <button class="btn">5</button>
                <button class="btn">다음</button>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- footer -->
      <footer class="m-5 text-start">
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
