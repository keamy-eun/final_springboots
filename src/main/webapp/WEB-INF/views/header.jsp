<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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
    </div>