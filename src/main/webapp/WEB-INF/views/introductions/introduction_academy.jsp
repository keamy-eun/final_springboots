<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file= "/WEB-INF/views/main/header.jsp" %>
<div class="container">
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
                    href="/introduction_academy"
                    target="_self"
                    class="text-decoration-none text-secondary"
                    >학원소개</a
                  >
                </li>
                <li class="border-top border-1 p-2">
                  <a
                    href="/introduction_learning"
                    target="_self"
                    class="text-decoration-none text-secondary"
                    >학습소개</a
                  >
                </li>
                <li class="border-top border-1 p-2">
                  <a
                    href="/introduction_enroll"
                    target="_self"
                    class="text-decoration-none text-secondary"
                    >입학안내</a
                  >
                </li>
                <li class="border-top border-1 p-2">
                  <a
                    href="/introduction_location"
                    target="_self"
                    class="text-decoration-none text-secondary"
                    >학원위치</a
                  >
                </li>
              </ul>
            </nav>
          </div>
          <div class="col container p-5">
            <h1>학원 소개</h1>
            <div class="fs-5">
              <br />
              <p>Speaking 해결방안이 이곳에 있습니다.</p>
              <p>
                인터뷰(면접), 프리젠테이션, 토론, 비즈니스... 어떠한
                Speaking이라도
              </p>
              <p>전문가는 쉽고 빠르게 … 당신을 변화시켜 줍니다.</p>
            </div>
            <p class="fs-3 text-danger">
              "어떻게 한 달 만에 영어를 잘할 수 있나요?"
            </p>
            <div class="fs-5">
              <p>딱! 한 달만 은정이학원과 함께하면 가능합니다!</p>
              <p>1. 첨단 집중 발화 시스템으로 저절로 말할 수 있게 됩니다.</p>
              <p>
                한 달! 입에서 영어소리가 저절로! 머리로 번역하는 절차 없이
                능숙하게!
              </p>
              <p>2. 영어소리의 속도,리듬,발음 감각 향상!</p>
              <p>문장이 입에서 저절로! 소리감각이 향상됩니다.</p>
              <p>3. 영어소리의 속도로 어순감각을 형성!</p>
              <p>문장이 어순으로, 어순에서 어법으로 감각이 쌓입니다.</p>
              <p>4.Speaking 대면감각 만들기! 영어 울렁증 극복!</p>
              <p>문장을 감정과 호소력으로 전달할 수 있다.</p>
            </div>
          </div>
        </div>
      </div>
      <!-- footer -->
      <%@ include file= "/WEB-INF/views/main/footer.jsp" %>
    </div>
  </body>
</html>
