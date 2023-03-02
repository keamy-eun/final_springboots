<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <%@ include file= "/WEB-INF/views/main/header.jsp" %>
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
      <div class="col-auto container p-5">

        <div>
          <h1>입학안내</h1>
          <br>
          <table class="table  border-dark table-lg">
              <caption>강의시간 변동 시 사전 연락드립니다.</caption>
            <thead class="thead-inverse">
                <tr>
                    <th></th>
                    <th>커리큘럼</th>
                    <th>강의시간</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">온라인 강의실</th>
                    <td>
                        <div>Interactive training</div>
                        <div>Sentence training course</div>
                        <div>Action track training</div>
                    </td>
                    <td>한달 내내</td>
                </tr>
                <tr>
                    <th scope="row">오프라인 강의실</th>
                    <td>
                        <div>Role play</div>
                        <div>Q&A, Rotation speaking, 응용 output 수업</div>
                        <div>MMS(Make my story)</div>
                    </td>
                    <td>월,수,금 18-22시</td>
                </tr>
                <tr>
                    <th scope="row">과제</th>
                    <td>
                        <div>on-line training 과제</div>
                        <div>off-line STC 30회 발화</div>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <th scope=>인터뷰</th>
                    <td>STC 체화 TEST - 월2회</td>
                    <td>매월 첫번째, 세번째 월요일 18시</td>
                </tr>
                <tr>
                    <th scope=>성과상담</th>
                    <td>주 1-2회</td>
                    <td>매주 수,금 18시</td>
                </tr>
            </tbody>
          </table>
        </div>
      </div>
    <!-- footer -->
    <%@ include file= "/WEB-INF/views/main/footer.jsp" %>
  </div>
</div>
</div>
  </body>
</html>
