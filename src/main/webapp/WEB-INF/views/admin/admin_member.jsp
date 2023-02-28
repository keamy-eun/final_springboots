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
                    href="/admin_member"
                    target="_self"
                    class="text-decoration-none text-secondary"
                    >회원관리</a
                  >
                </li>
              </ul>
            </nav>
          </div>
          <div class="col container p-5">
            <h1>회원관리</h1>
            <br />
            <!-- table start -->
            <div class="card-body p-0">
              <table class="table table-hover text-nowrap">
                <thead>
                  <tr class="bordered-top">
                    <th><input type="checkbox" name="" id="" /></th>
                    <th>아이디</th>
                    <th>이름</th>
                    <th>등급</th>
                    <th>생년월일</th>
                    <th>이메일주소</th>
                    <th>SMS광고수신</th>
                    <th>Email광고수신</th>
                    <th>수정</th>
                    <th>삭제</th>
                  </tr>
                </thead>
                <tbody>
                  <c:forEach items="${resultMap.resultList}" var="resultData" varStatus="loop">
                    <tr>
                      <td><input type="checkbox" name="" id="" /></td>
                      <td>${resultData.MEMBER_ID}</td>
                      <td>${resultData.MEMBER_NAME}</td>
                      <td>${resultData.POSITION}</td>
                      <td>${resultData.BIRTH}</td>
                      <td>${resultData.EMAIL}</td>
                      <td>${resultData.SMS_AD}</td>
                      <td>${resultData.EMAIL_AD}</td>
                      <td>
                        <div class="container">
                          <form action="/admin_edit_form/${resultData.MEMBER_ID}" method="get">
                            <button class="btn btn-primary">수정</button>
                          </form>
                        </div>
                      </td>
                      <td>
                        <div class="container">
                          <form action="/admin_member/${resultData.MEMBER_ID}" method="post">
                            <button class="btn btn-danger">삭제</button>
                          </form>
                        </div>
                      </td>
                    </tr>
                  </c:forEach>
                </tbody>
              </table>
            <nav aria-label="Page navigation example">
              <c:set var="pagination" value="${resultMap.paginations}" />
                <span>전체 회원수 : ${pagination.totalCount}</span>
                <ul class="pagination">
                  <li class="page-item">
                    <a class="page-link" href="/admin_member_pagination/${pagination.previousPage}" aria-label="Previous">
                      <span aria-hidden="true">&laquo;</span>
                      <span class="sr-only"></span>
                    </a>
                  </li>
                
                <c:forEach var="pageNum" begin="${pagination.blockStart}" end="${pagination.blockEnd+1}" varStatus="loop">
                  <c:set var="color" value="" />
                  <c:if test="${pageNum eq 1}">
                      <c:set var="color" value="bg-secondary bg-opacity-25" />
                  </c:if>
                  <li class="page-item"><a class="page-link ${color}" href="/admin_member_pagination/${pageNum}">${pageNum}</a></li>
                </c:forEach>
                  <li class="page-item">
                    <a class="page-link" href="/admin_member_pagination/${pagination.nextPage}" aria-label="Next">
                      <span aria-hidden="true">&raquo;</span>
                      <span class="sr-only"></span>
                    </a>
                  </li>
                </ul>
              </nav>
            </div>
          </div>
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
        회사소개 | 인재채용 | 제휴제안 | 이용약관개인정보처리방침 | 정책고객센터
        | ⓒ EJ Corp
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
  </body>
</html>
