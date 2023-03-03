<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file= "/WEB-INF/views/main/header.jsp" %>
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
    <div class="container">
      <hr />

      <!-- login -->
      <div class="container">
        <div class="input-form-backgroud">
          <div class="input-form col-md-12 mx-auto text-center">
            <div class="opacity-50">
              로그인을 하시면 은정이아카데미의 다양한 컨텐츠를 이용하실 수
              있습니다.
            </div>
            <div>
              <img src="https://user-images.githubusercontent.com/115060986/219259301-39328314-70ed-4993-ba31-b11e987b1218.png" alt="" width="150" />
            </div>
            <div class="p-3">
              <h5 class="form-signin-heading mb-4">로그인 정보를 입력하세요</h5>
              <c:if test="${not empty param.fail}">
                <div><font color="red"> Login Fail ! </font></div>
              </c:if>
              <form class="" action="/login" method="post">
                <div class="ms-5 me-5">
                  <div class="ms-5 me-5">
                    <input
                      type="text"
                      placeholder="아이디"
                      name="username"
                      class="form-control"
                    />
                    <input
                      type="password"
                      placeholder="비밀번호"
                      name = "password"
                      class="col-xs-2 form-control mt-3"
                    />
                  </div>
                </div>
                <button class="btn btn-primary ms-4 mt-4 me-3" type="submit">
                  로그인
                </button>
                <button class="btn btn-primary mt-4 ms-2">
                  <a
                    href="/home/Signupform"
                    class="text-decoration-none text-white" type="submit"
                    >회원가입</a
                  >
                </button>
              </form>
            </div>
            <%-- <a
              href="#modalTarget01"
              class="btn btn-primary"
              data-bs-toggle="modal"
              >로그인(비밀번호 불일치시)</a
            >
            <div
              class="modal fade"
              id="modalTarget01"
              tabindex="-1"
              role="dialog"
              aria-labelledby=""
              aria-hidden="true"
            >
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header fw-bold"></div>
                  <div class="modal-body">
                    아이디 또는 비밀번호가 일치하지 않습니다.
                  </div>
                  <div class="modal-footer">
                    <button
                      class="btn btn-secondary text-white bg-secondary bg-opacity-75"
                      data-bs-dismiss="modal"
                    >
                      Colse
                    </button>
                  </div>
                </div>
              </div>
            </div> --%>
            <div class="mt-3">
              <a href="#">아이디나 비밀번호를 찾을 수 없으신가요?</a>
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
