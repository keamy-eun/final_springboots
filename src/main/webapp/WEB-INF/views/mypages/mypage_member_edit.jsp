<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ include file= "/WEB-INF/views/main/header.jsp" %>

    <style>
        .input-form {
          max-width: 680px;
          margin-top: 80px;
          padding: 32px;
        }
      </style>
    <div class="container">
    <hr />

    <!--  -->
    <div class="text-start container-fluid">
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
                    href="/mypage/Lecture"
                    target="_self"
                    class="text-decoration-none text-secondary"
                    >수강중인 강의</a
                  >
                </li>
                <li class="border-top border-1 p-2">
                  <a
                    href="/mypage/LectureSignUpList"
                    target="_self"
                    class="text-decoration-none text-secondary"
                    >수강신청내역</a
                  >
                </li>
                <li class="border-top border-1 p-2">
                  <a
                    href="/mypage/EditForm"
                    target="_self"
                    class="text-decoration-none text-secondary"
                    >개인정보수정</a
                  >
                </li>
                <li class="border-top border-1 p-2">
                  <a
                    href="/mypage/selfTestForm"
                    target="_self"
                    class="text-decoration-none text-secondary"
                    >영어실력 테스트</a
                  >
                </li>
            </ul>
          </nav>
        </div>
        
    <div class="col container p-5">
        <div class="input-form-backgroud row">
          <div class="input-form col-md-12 m-5 p-5">
            <h4 class="mb-4 fs-3 d-flex justify-content-start">개인정보수정</h4>
            <form class="validation-form" action="/mypage/EditFormComplete"  method="get" novalidate>
              <div class="row">
                <div class="col-md-6 mb-3">
                  <label for="name">이름</label>
                  <input
                    type="text"
                    class="form-control"
                    id="name"
                    value="${resultMap.MEMBER_NAME}"
                    disabled
                  />
                  <div class="invalid-feedback">이름을 입력해주세요.</div>
                </div>
                <div class="col-md-6 mb-3">
                  <label for="nickname">아이디</label>
                  <input
                    type="text"
                    class="form-control"
                    id="nickname"
                    name="MEMBER_ID"
                    value="${resultMap.MEMBER_ID}"
                    disabled
                  />
                  <div class="invalid-feedback">별명을 입력해주세요.</div>
                </div>
              </div>
  
              <div class="mb-3">
                <label for="password">비밀번호</label>
                <input
                  type="password"
                  class="form-control"
                  id="password"
                  name="password"
                  required
                />
                <div class="invalid-feedback">비밀번호를 입력해주세요.</div>
              </div>
  
              <div class="mb-3">
                <label for="password_check">비밀번호 확인</label>
                <input
                  type="password"
                  class="form-control"
                  id="password_check"
                  required
                />
                <div class="invalid-feedback">비밀번호를 입력해주세요.</div>
              </div>
  
              <div class="mb-3">
                <label for="email">이메일</label>
                <input
                  type="email"
                  class="form-control"
                  id="email"
                  name="EMAIL"
                  value="${resultMap.EMAIL}"
                  required
                />
                <div class="invalid-feedback">이메일을 입력해주세요.</div>
              </div>

              <div class="form-group row mt-3">
                <label for="" class="col-sm-3 col-form-label">생년월일</label>
                <div class="col-sm-2">
                  <select name="BIRTY_year" id="" class="form-control">
                    <% for(int i=1; i<40; i++) { %>	
                      <option value="<%=i+1970%>"><%=i+1970%></option>
                    <% } %>	
                  </select>
                </div>
                <div class="col-sm-1">년</div>
                <div class="col-sm-2">
                  <select name="BIRTY_month" id="" class="form-control">
                    <% for(int i=1; i<13; i++) { %>	
                      <option value="<%=i%>"><%=i%></option>
                    <% } %>	
                  </select>
                </div>
                <div class="col-sm-1">월</div>
                <div class="col-sm-2">
                  <select name="BIRTY_day" id="" class="form-control">
                  <%-- selected 구현 --%>
                    <% for(int i=1; i<32; i++) { %>	
                      <option value="<%=i%>"><%=i%></option>
                    <% } %>	
                  </select>
                </div>
                <div class="col-sm-1">일</div>
              </div>
              <!-- Ad receive check -->
              <div class="form-group row mt-3">
                <div class="col-sm-3">광고수신여부 :</div>
                <div class="col-sm-9">
                  SMS <input type="checkbox" name="SMS_AD" class="form-check-input" id="" 
                        ${resultMap.SMS_AD == 'Yes' ? 'checked' : ''} /> 
                        / Email
                  <input type="checkbox" name="EMAIL_AD" class="form-check-input" id="" ${resultMap.EMAIL_AD == 'Yes' ? 'checked' : ''}/> 로 수신하겠습니다
                </div>
              </div>
  
              <hr class="mb-4" />
              <div class="d-flex justify-content-between">
                <div>
                  <button
                    class="btn btn-primary text-decoration-none text-white"
                    type="submit"
                     onclick= "alert('수정 되었습니다! 다시 로그인해주세요')"
                    >
                    수정
                  </button>
                </div>
              <div>
                <a href="/mypage/deleteMember" onclick="alert('탈퇴가 완료되었습니다')" class="btn btn-danger"
                  >회원탈퇴</a
                >
              </div>
              </div>
            </form>
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
    <%-- 비밀번호 추천 --%>
    <script>
      var password = document.getElementById("password"),
      confirm_password = document.getElementById("password_check");
      function validatePassword() {
        if (password.value != confirm_password.value) {
          confirm_password.setCustomValidity("비밀번호가 일치하지 않습니다");
        } else {
          confirm_password.setCustomValidity(""); // 오류가 없으면 메시지를 빈 문자열로 설정해야한다. 오류 메시지가 비어 있지 않은 한 양식은 유효성 검사를 통과하지 않고 제출되지 않는다.
        }
    }
    password.onchange = validatePassword;
    confirm_password.onkeyup = validatePassword;
    </script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
