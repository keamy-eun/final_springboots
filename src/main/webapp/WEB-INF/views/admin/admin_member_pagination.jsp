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
                    href="/admin/member"
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
            <div class="text-start fs-5 m-3">전체 회원수 : ${resultMap.paginations.totalCount}</div>
            <div class="card-body p-0">
              <form action="/admin/deleteMulti" method="post">
                  <table class="table table-hover text-nowrap">
                    <thead>
                      <tr class="bordered-top">
                        <th></th>
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
                          <td><input type="checkbox" name="deleteList" value="${resultData.MEMBER_ID}" /></td>
                    <td>${resultData.MEMBER_ID}</td>
                    <td>${resultData.MEMBER_NAME}</td>
                    <td>${resultData.POSITION}</td>
                    <td>${resultData.BIRTH}</td>
                    <td>${resultData.EMAIL}</td>
                    <td>${resultData.SMS_AD}</td>
                    <td>${resultData.EMAIL_AD}</td>
                    <td>
                      <div class="container">
                        <form action="/admin/edit_form/${resultData.MEMBER_ID}" method="get">
                          <button class="btn btn-primary">수정</button>
                        </form>
                      </div>
                    </td>
                    <td>
                      <div class="container">
                        <form action="/admin/member/${resultData.MEMBER_ID}" method="post">
                          <button class="btn btn-danger">삭제</button>
                        </form>
                      </div>
                    </td>
                  </tr>
                </c:forEach>
                </tbody>
              </table>
              <button class="btn btn-secondary d-flex justify-content-end mb-4 ms-3">선택삭제</button>
              </form>
              <nav aria-label="Page navigation example">
              <c:set var="pagination" value="${resultMap.paginations}" />
                <ul class="pagination">
                  <li class="page-item">
                    <a class="page-link" href="/admin/member_pagination/${pagination.previousPage}" aria-label="Previous">
                      <span aria-hidden="true">&laquo;</span>
                      <span class="sr-only"></span>
                    </a>
                  </li>
                
                <c:forEach var="pageNum" begin="${pagination.blockStart}" end="${pagination.blockEnd+1}" varStatus="loop">
                  <c:set var="color" value="" />
                  <c:if test="${currentPage eq pageNum}">
                      <c:set var="color" value="bg-secondary bg-opacity-25" />
                  </c:if>
                  <li class="page-item"><a class="page-link ${color}" href="/admin/member_pagination/${pageNum}">${pageNum}</a></li>
                </c:forEach>
                  <li class="page-item">
                    <a class="page-link" href="/admin/member_pagination/${pagination.nextPage}" aria-label="Next">
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
    <%@ include file= "/WEB-INF/views/main/footer.jsp" %>
  </body>
</html>
