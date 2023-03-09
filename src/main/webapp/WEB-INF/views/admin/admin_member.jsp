<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file= "/WEB-INF/views/main/header.jsp" %>
      <div class="container">
      <hr />
      <div class="text-center container-fluid">
        <div class="row">
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
                          <td><input type="checkbox" name="MEMBER_ID" value="${resultData.MEMBER_ID}" /></td>
                          <td>${resultData.MEMBER_ID}</td>
                          <td>${resultData.MEMBER_NAME}</td>
                          <td>${resultData.POSITION}</td>
                          <td>${resultData.BIRTH}</td>
                          <td>${resultData.EMAIL}</td>
                          <td>${resultData.SMS_AD}</td>
                          <td>${resultData.EMAIL_AD}</td>
                          <td>
                            <div class="container">
                                <button formaction="/admin/edit_form/${resultData.MEMBER_ID}" formmethod="get"class="btn btn-primary">수정</button>
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
                <c:set var="_pagination" value="${resultMap.paginations}" />
                  <span>전체 회원수 : ${_pagination.totalCount}</span>
                  <ul class="pagination">
                    <li class="page-item">
                      <a class="page-link" href="/admin/member_pagination/${_pagination.previousPage}" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                        <span class="sr-only"></span>
                      </a>
                    </li>
                  <c:forEach var="pageNum" begin="${_pagination.blockStart}" end="${_pagination.blockEnd}" varStatus="loop">
                    <c:set var="color" value="" />
                    <c:if test="${1 eq pageNum}">
                        <c:set var="color" value="bg-secondary bg-opacity-25" />
                    </c:if>
                    <li class="page-item"><a class="page-link ${color}" href="/admin/member_pagination/${pageNum}">${pageNum}</a></li>
                  </c:forEach>
                  <li class="page-item">
                    <a class="page-link" href="/admin/member_pagination/${_pagination.nextPage}" aria-label="Next">
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
