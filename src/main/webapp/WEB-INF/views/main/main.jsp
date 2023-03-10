<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<%@ include file= "/WEB-INF/views/main/header.jsp" %>
<div class="container">
<c:set var="getStudent" value="${getStudent[0]}"/>
<c:set var="getLecturer" value="${getLecturer[0]}"/>
<c:set var="getNotice" value="${getNotice[0]}"/>
<c:set var="getLectureReview" value="${getLectureReview[0]}"/>
      <hr />
      <!-- image -->
      <div class="d-flex justify-content-center mt-4">
        <img src="https://user-images.githubusercontent.com/115060986/222607691-0978f4b3-b156-4bdc-9b44-4fbc5aa562e4.jpg" alt="" class="img-fluid rounded" />
      </div>
      <!-- 웰컴 -->
      <div class="text-center container mb-5">
        <h2 class="mt-5 fw-bold">은정 아카데미에 어서오세요</h2>
        <h4 class="m-4">
          저희 은정 아카데미에서 온라인으로 무료 어학강의를 받아보세요!
        </h4>
        <div class="row mt-5">
          <div class="col">
            <div class="text-danger">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="160"
                height="160"
                fill="currentColor"
                class="bi bi-emoji-kiss"
                viewBox="0 0 16 16"
              >
                <path
                  fill-rule="evenodd"
                  d="M12.493 13.368a7 7 0 1 1 2.489-4.858c.344.033.68.147.975.328a8 8 0 1 0-2.654 5.152 8.58 8.58 0 0 1-.81-.622Zm-3.731-3.22a13 13 0 0 0-1.107.318.5.5 0 1 1-.31-.95c.38-.125.802-.254 1.192-.343.37-.086.78-.153 1.103-.108.16.022.394.085.561.286.188.226.187.497.131.705a1.892 1.892 0 0 1-.31.593c-.077.107-.168.22-.275.343.107.124.199.24.276.347.142.197.256.397.31.595.055.208.056.479-.132.706-.168.2-.404.262-.563.284-.323.043-.733-.027-1.102-.113a14.87 14.87 0 0 1-1.191-.345.5.5 0 1 1 .31-.95c.371.12.761.24 1.109.321.176.041.325.069.446.084a5.609 5.609 0 0 0-.502-.584.5.5 0 0 1 .002-.695 5.52 5.52 0 0 0 .5-.577 4.465 4.465 0 0 0-.448.082Zm.766-.087-.003-.001-.003-.001c.004 0 .006.002.006.002Zm.002 1.867-.006.001a.038.038 0 0 1 .006-.002ZM6 8c.552 0 1-.672 1-1.5S6.552 5 6 5s-1 .672-1 1.5S5.448 8 6 8Zm2.757-.563a.5.5 0 0 0 .68-.194.934.934 0 0 1 .813-.493c.339 0 .645.19.813.493a.5.5 0 0 0 .874-.486A1.934 1.934 0 0 0 10.25 5.75c-.73 0-1.356.412-1.687 1.007a.5.5 0 0 0 .194.68ZM14 9.828c1.11-1.14 3.884.856 0 3.422-3.884-2.566-1.11-4.562 0-3.421Z"
                />
              </svg>
            </div>
            <h4 class="mt-5">"무료 강의시스템"</h4>
            <h6>저희 은정아카데미는 수강자에게 무료강의를 제공합니다</h6>
            <h6>강의를 듣고싶은 누구나 편하게 신청하세요</h6>
          </div>
          <div class="col">
            <div class="text-primary">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="160"
                height="160"
                fill="currentColor"
                class="bi bi-chat-dots"
                viewBox="0 0 16 16"
              >
                <path
                  d="M5 8a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm4 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm3 1a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"
                />
                <path
                  d="m2.165 15.803.02-.004c1.83-.363 2.948-.842 3.468-1.105A9.06 9.06 0 0 0 8 15c4.418 0 8-3.134 8-7s-3.582-7-8-7-8 3.134-8 7c0 1.76.743 3.37 1.97 4.6a10.437 10.437 0 0 1-.524 2.318l-.003.011a10.722 10.722 0 0 1-.244.637c-.079.186.074.394.273.362a21.673 21.673 0 0 0 .693-.125zm.8-3.108a1 1 0 0 0-.287-.801C1.618 10.83 1 9.468 1 8c0-3.192 3.004-6 7-6s7 2.808 7 6c0 3.193-3.004 6-7 6a8.06 8.06 0 0 1-2.088-.272 1 1 0 0 0-.711.074c-.387.196-1.24.57-2.634.893a10.97 10.97 0 0 0 .398-2z"
                />
              </svg>
            </div>
            <h4 class="mt-5">"학생들간의 교류"</h4>
            <h6>저희 은정아카데미는 여러 게시판을 운영하고있습니다</h6>
            <h6>궁금한 점을 언제든지 물어보세요</h6>
          </div>
          <div class="col">
            <div class="text-warning">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="160"
                height="160"
                fill="currentColor"
                class="bi bi-emoji-smile"
                viewBox="0 0 16 16"
              >
                <path
                  d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"
                />
                <path
                  d="M4.285 9.567a.5.5 0 0 1 .683.183A3.498 3.498 0 0 0 8 11.5a3.498 3.498 0 0 0 3.032-1.75.5.5 0 1 1 .866.5A4.498 4.498 0 0 1 8 12.5a4.498 4.498 0 0 1-3.898-2.25.5.5 0 0 1 .183-.683zM7 6.5C7 7.328 6.552 8 6 8s-1-.672-1-1.5S5.448 5 6 5s1 .672 1 1.5zm4 0c0 .828-.448 1.5-1 1.5s-1-.672-1-1.5S9.448 5 10 5s1 .672 1 1.5z"
                />
              </svg>
            </div>
            <h4 class="mt-5">"학생수준에 따른 맞춤강의선택"</h4>
            <h6>저희 은정아카데미는 다양한 클래스의 강의를 제공합니다</h6>
            <h6>자신의 수준에 맞추어 강의를 선택해보세요</h6>
          </div>
        </div>
      </div>
      <!-- 검은 배경에 최근강의  -->
      <div class="bg-black d-flex justify-content-around pt-5">
        <div class="text-white text-start p-5">
          <h1>
            은정 아카데미만의
            <span class="text-warning fw-bold">차별화된 교육방법</span>을
            확인하세요!
          </h1>
          <div>
            저희 학원의 10년간의 열정이 담긴 교육방법의 노하우를 지금
            확인해보세요
          </div>
          <div class="d-flex justify-content-between">
            <div>
              학생들의 피드백과 교사들의 학습에 대한 열정이 만들어낸 교육방식!
            </div>
            <div class="mt-4">
              <a href="/introduction_learning" class="btn btn-primary"
                >교육방법 보러가기</a
              >
            </div>
          </div>
        </div>
      </div>
      <!-- 최신 강좌 게시판 -->
      <div class="container p-5">
        <!-- 머리글 -->
        <div class="text-center fs-bold">
          <h1>최신 학습정보 게시판</h1>
          <h6 class="m-4 text-secondary">방금 올라온 강좌들을 확인하세요!</h6>
        </div>

        <div class="row">
          <!-- 카드 그룹 -->
          <div class="card-group col-9 p-3">
            <!-- card 1 -->
            <div class="card">
           <%-- <img
                class="card-img-top"
                src="https://assets.blog.engoo.com/wp-content/uploads/sites/2/2021/07/22171447/005-1.png.webp"
                alt="Card image cap"
              /> --%>

<%-- <c:set var="getStudent" value="${getStudent[0]}"/>
<c:set var="getLecturer" value="${getLecturer[0]}"/>
<c:set var="getNotice" value="${getNotice[0]}"/>
<c:set var="getLectureReview" value="${getLectureReview[0]}"/> --%>

              <div class="card-body h-50">
                <b class="text-center"><h4>[&nbsp강사 게시판 ]</h4></b>
                <hr>
                <h5 class="card-title">${getLecturer.COMMUNITY_TITLE}</h5>
                <p class="card-text">
                  ${getLecturer.COMMUNITY_CONTENT}
                </p>
                <div class="hidden_Post_number_lecturer" style="display:none;">${getLecturer.POST_NUMBER}</div>
                <div class="text-end">
                  <button class="recent_post_lecturer btn btn-success m-3 w-25">더 읽기</button>
                </div>
                <p class="card-text mb-5">
                  <small class="text-muted">updated ${getLecturer.COMMUNITY_DATE}</small>
                </p>
              <%--  --%>
              <%-- card 3  --%>
              <hr class="border-info mb-5">
              <b class="text-center"><h4>[&nbsp 공지 게시판 ]</h4></b>
                <hr>
                <h5 class="card-title">${getNotice.COMMUNITY_TITLE}</h5>
                <p class="card-text">
                  ${getNotice.COMMUNITY_CONTENT}
                </p>
                <div class="hidden_Post_number_notice" style="display:none;">${getNotice.POST_NUMBER}</div>
                <div class="text-end">
                <button class="recent_post_notice btn btn-success m-3 w-25">더 읽기</button>
                </div>
                <p class="card-text">
                  <small class="text-muted">updated ${getNotice.COMMUNITY_DATE}</small>
                </p>
              <%--  --%>
              </div>
              
            </div>
            
            <!-- card 2 -->
            <div class="card">
              <div class="card-body">
              <b class="text-center"><h4>[&nbsp학생 게시판 ]</h4></b>
                <hr>
                <h5 class="card-title">${getStudent.COMMUNITY_TITLE}</h5>
                <p class="card-text">
                  ${getStudent.COMMUNITY_CONTENT}
                </p>
                <div class="hidden_Post_number_student" style="display:none;">${getStudent.POST_NUMBER}</div>
                <div class="text-end">
                <button class="recent_post_student btn btn-success m-3 w-25">더 읽기</button>
                </div>
                <p class="card-text">
                  <small class="text-muted">updated ${getStudent.COMMUNITY_DATE}</small>
                </p>
                <%--  --%>
                <%-- card 3  --%>
              <hr class="border-info mb-5">
              <b class="text-center"><h4>[&nbsp 강의후기 게시판 ]</h4></b>
                <hr>
                <h5 class="card-title">${getLectureReview.COMMUNITY_TITLE}</h5>
                <p class="card-text">
                  ${getLectureReview.COMMUNITY_CONTENT}
                </p>
                <div class="hidden_Post_number_review" style="display:none;">${getLectureReview.POST_NUMBER}</div>
                <div class="text-end">
                <button class="recent_post_review btn btn-success m-3 w-25">더 읽기</button>
                </div>
                <p class="card-text">
                  <small class="text-muted">updated ${getLectureReview.COMMUNITY_DATE}</small>
                </p>
                <%--  --%>
              </div>
            </div>

            <%--  --%>
            
          </div>

          <div class="col-3">
            <!-- 소제 -->
            <div class="d-flex justify-content-aroud mt-3">
              <div>
                <img
                  src="https://assets.blog.engoo.com/wp-content/uploads/sites/2/2021/07/22171345/007.png.webp"
                  alt="..."
                  width="200"
                  height="200"
                  class="img-thumbnail"
                />
              </div>
              <div class="d-flex align-items-center fs-bold">
                <a href="/community_lecturepost/강의듣기">
                  [독해 입문] 물마시듯 매일매일 영어독해
                </a>
              </div>
            </div>
            <!-- 소제 -->
            <div class="d-flex justify-content-aroud mt-5">
              <div>
                <img
                  src="https://assets.blog.engoo.com/wp-content/uploads/sites/2/2021/07/22171345/007.png.webp"
                  alt="..."
                  width="200"
                  height="200"
                  class="img-thumbnail"
                />
              </div>
              <div class="d-flex align-items-center fs-bold">
                <a href="/community_lecturepost/강의듣기">
                  [문법 입문] 기초 문법 공부 2단계
                </a>
              </div>
            </div>
            <!-- 소제 -->
            <div class="d-flex justify-content-aroud mt-5">
              <div>
                <img
                  src="https://assets.blog.engoo.com/wp-content/uploads/sites/2/2021/07/22171345/007.png.webp"
                  alt="..."
                  width="200"
                  height="200"
                  class="img-thumbnail"
                />
              </div>
              <div class="d-flex align-items-center fs-bold">
                <a href="/community_lecturepost/강의듣기">
                  [문법 입문] 기초 문법 공부 2단계
                </a>
              </div>
            </div>
            <!-- 소제 -->
            <div class="d-flex justify-content-aroud mt-5">
              <div>
                <img
                  src="https://assets.blog.engoo.com/wp-content/uploads/sites/2/2021/07/22171345/007.png.webp"
                  alt="..."
                  width="200"
                  height="200"
                  class="img-thumbnail"
                />
              </div>
              <div class="d-flex align-items-center fs-bold">
                <a href="/community_lecturepost/강의듣기">
                  [문법 입문] 기초 문법 공부 1단계
                </a>
              </div>
            </div>
            <!-- 소제 -->
            <div class="text-end mt-3">
              <a href="">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  width="30"
                  height="30"
                  fill="currentColor"
                  class="bi bi-arrow-left-circle"
                  viewBox="0 0 16 16"
                >
                  <path
                    fill-rule="evenodd"
                    d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8zm15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-4.5-.5a.5.5 0 0 1 0 1H5.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L5.707 7.5H11.5z"
                  />
                </svg>
              </a>
              <a href="">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  width="30"
                  height="30"
                  fill="currentColor"
                  class="bi bi-arrow-right-circle"
                  viewBox="0 0 16 16"
                >
                  <path
                    fill-rule="evenodd"
                    d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8zm15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM4.5 7.5a.5.5 0 0 0 0 1h5.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H4.5z"
                  />
                </svg>
              </a>
            </div>
          </div>
        </div>
        <!-- 옆에 설명 -->
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

                  
      <!--  -->
    </div>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script>
    // 강사게시판
      $(document).on('click','.recent_post_lecturer',function(){
        // 여기에 주소값을 넣어야함 post11 이런식으로 들어가야함
        let community_title = $('.recent_post_lecturer').text();
        let hidden_Post_number_lecturer = $('.hidden_Post_number_lecturer').text();
        // 그 값을 받고 링크에 담아서 이동
        location.href = "/community_post/"+hidden_Post_number_lecturer
      });
      $(document).on('mouseover','.recent_post_lecturer',function(){
        $('.recent_post_lecturer').css('padding','none');
        $(this).css('padding','0.5px solid lightgrey');
      });

      // 학생게시판
      $(document).on('click','.recent_post_student',function(){
        // 여기에 주소값을 넣어야함 post11 이런식으로 들어가야함
        let community_title = $('.recent_post_student').text();
        let hidden_Post_number_student = $('.hidden_Post_number_student').text();
        // 그 값을 받고 링크에 담아서 이동
        location.href = "/community_post/"+hidden_Post_number_student
      });
      $(document).on('mouseover','.recent_post_student',function(){
        $('.recent_post_student').css('padding','none');
        $(this).css('padding','0.5px solid lightgrey');
      });

      // 공지게시판
      $(document).on('click','.recent_post_notice',function(){
        // 여기에 주소값을 넣어야함 post11 이런식으로 들어가야함
        let community_title = $('.recent_post_notice').text();
        let hidden_Post_number_notice = $('.hidden_Post_number_notice').text();
        // 그 값을 받고 링크에 담아서 이동
        location.href = "/community_post/"+hidden_Post_number_notice
      });
      $(document).on('mouseover','.recent_post_notice',function(){
        $('.recent_post_notice').css('padding','none');
        $(this).css('padding','0.5px solid lightgrey');
      });

      // 리뷰게시판
      $(document).on('click','.recent_post_review',function(){
        // 여기에 주소값을 넣어야함 post11 이런식으로 들어가야함
        let community_title = $('.recent_post_review').text();
        let hidden_Post_number_review= $('.hidden_Post_number_review').text();
        // 그 값을 받고 링크에 담아서 이동
        location.href = "/community_post/"+hidden_Post_number_review
      });
      $(document).on('mouseover','.recent_post_review',function(){
        $('.recent_post_review').css('padding','none');
        $(this).css('padding','0.5px solid lightgrey');
      });
    </script>
  </body>
</html>
