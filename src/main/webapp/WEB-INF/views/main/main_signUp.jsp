<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


    <style>
      .input-form {
        max-width: 680px;

        margin-top: 80px;
        padding: 32px;

        background: #fff;
        -webkit-border-radius: 10px;
        -moz-border-radius: 10px;
        border-radius: 10px;
        -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
        -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
        box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      }
    </style>
  <%@ include file= "/WEB-INF/views/main/header.jsp" %>

<hr />

      <div class="container mb-5">
        <div class="input-form-backgroud row">
          <div class="input-form col-md-6 mx-auto">
            <h4 class="mb-3">회원가입</h4>
            <form class="form-group" action="/home/SignupComplete" method="get">
              <div class="row">
                <div class="col-md-6 mb-3">
                  <label for="nickname">아이디</label>
                  <input
                    type="text"
                    class="form-control"
                    id="nickname"
                    name="MEMBER_ID"
                    placeholder=""
                    value=""
                    required
                  />
                  <div class="invalid-feedback">별명을 입력해주세요.</div>
                </div>
                <div class="col-md-6 mb-3">
                  <label for="name">이름</label>
                  <input
                    type="text"
                    class="form-control"
                    id="name"
                    name="MEMBER_NAME"
                    placeholder=""
                    value=""
                    required
                  />
                  <div class="invalid-feedback">이름을 입력해주세요.</div>
                </div>
              </div>

              <div class="mb-3">
                <label for="password">비밀번호</label>
                <input
                  type="password"
                  class="form-control"
                  id="password"
                  name="PW"
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
                  name="PW_check"
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
                  placeholder="you@example.com"
                  required
                />
                <div class="invalid-feedback">이메일을 입력해주세요.</div>
              </div>

              <div class="form-group row mt-3">
                <label for="" class="col-sm-3 col-form-label">생년월일</label>
                <div class="col-sm-2">
                  <select id="" name="BIRTY_year" class="form-control">
                    <% for(int i=1; i<40; i++) { %>	
                      <option value="<%=i+1970%>"><%=i+1970%></option>
                    <% } %>	
                  </select>
                </div>
                <div class="col-sm-1">년</div>
                <div class="col-sm-2">
                  <select id="" name="BIRTY_month" class="form-control">
                    <% for(int i=1; i<13; i++) { %>	
                      <option value="<%=i%>"><%=i%></option>
                    <% } %>	
                  </select>
                </div>
                <div class="col-sm-1">월</div>
                <div class="col-sm-2">
                  <select id="" name="BIRTY_day" class="form-control">
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
                  SMS <input type="checkbox" name="SMS_AD" class="" id="" /> /
                  Email <input type="checkbox" name="EMAIL_AD" id="" /> 로
                  수신하겠습니다
                </div>
              </div>

              <hr class="mb-4" />
              <div class="custom-control custom-checkbox">
                <input
                  type="checkbox"
                  class="custom-control-input"
                  id="aggrement"
                  name="PRIVACY_INFO"
                  required
                />
                <label class="custom-control-label" for="aggrement"
                  >개인정보 수집 및 이용에 동의합니다.</label
                >
              </div>
              <div class="mb-4"></div>
              <button
                class="btn btn-primary ms-3 mt-4 me-3 text-decoration-none text-white"
                type="submit"
              >
                가입 완료
              </button>
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
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
