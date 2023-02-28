<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file= "/WEB-INF/views/main/header.jsp" %>

    <div class="container">
      <hr />

      <div class="text-center container m-0 p-0">
        <h1>회원관리</h1>
        <br />
        <!-- table start -->
        <div class="card-body p-0">
          <table class="table text-nowrap">
            <thead>
              <tr class="bordered-top">
                <th>아이디</th>
                <th>이름</th>
                <th>등급</th>
                <th>생년월일</th>
                <th>이메일주소</th>
                <th>SMS광고수신</th>
                <th>Email광고수신</th>
                <th>수정</th>
              </tr>
            </thead>
            <form action="/admin_edit" method="post">
            <tbody>
              <tr>
                <td>
                  <input readonly class="form-control" type="text" name="MEMBER_ID" value="${resultMap.MEMBER_ID}"/>
                </td>
                <td>
                  <input class="form-control" type="text" name="MEMBER_NAME" value="${resultMap.MEMBER_NAME}"/>
                </td>
                <td>
                  <select name="POSITION" class="form-control ms-1 me-2 text-center" value="${resultMap.POSITION}">
                    <option value="${resultMap.POSITION}">선택</option>
                      <option value="">학생</option>
                      <option value="">강사</option>
                      <option value="">관리자</option>
                  </select>
                </td>
                <td>
                  <input class="form-control" type="text" name="BIRTH" value="${resultMap.BIRTH}"/>
                </td>
                <td>
                  <input class="form-control" type="text" name="EMAIL" value="${resultMap.EMAIL}" />
                </td>
                <td>
                  <div class="form-check">
                  <input type="checkbox" class="form-check-input" name="SMS_AD"
                  ${resultMap.SMS_AD == 'YES' ? 'checked': ''} />
                  </div>
              </td>
                <td>
                  <div class="form-check">
                  <input type="checkbox" class="form-check-input" name="EMAIL_AD"
                  ${resultMap.EMAIL_AD == 'YES' ? 'checked': ''} />
                  </div>
              </td>
                <td>
                  <button class="btn btn-success">
                    <a
                      class="text-decoration-none text-white"
                      >수정</a
                    >
                  </button>
                </td>
              </tr>
            </tbody>
          </form>
          </table>
        </div>
      </div>
      <%@ include file= "/WEB-INF/views/main/footer.jsp" %>
    </div>
  </body>
</html>
