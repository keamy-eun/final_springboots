<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file= "/WEB-INF/views/main/header.jsp" %>
<head>
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
        google.charts.load('current', { 'packages': ['corechart'] });
        google.charts.setOnLoadCallback(drawChart);
        let datasArray1 = ${ dataArray.get(0) };
        let datasArray2 = ${ dataArray.get(1) };
        let datasArray3 = ${ dataArray.get(2) };
        function drawChart() {

            var data1 = google.visualization.arrayToDataTable(datasArray1);
            var data2 = google.visualization.arrayToDataTable(datasArray2);
            var data3 = google.visualization.arrayToDataTable(datasArray3);
            let target_element1 = document.getElementById('chart_div1');
            let target_element2 = document.getElementById('chart_div2');
            let target_element3 = document.getElementById('chart_div3');
            target_element1.parentElement.clientHeight;
            target_element2.parentElement.clientHeight;
            target_element3.parentElement.clientHeight;
            var options1 = {
                title: '선택하신 강의를 신청하게 된 계기가 무엇인가요?',
                hAxis: { title: '1.지인의 추천으로 \n 2.인터넷 광고를 보고 \n 3.SMS 광고를 보고 \n 4.수업이 마음에 들어서 재신청 \n 기타', minValue: 0, maxValue: 15 },
                vAxis: { title: '선택수', minValue: 0, maxValue: 15 },
                legend: 'none'  // 범례
            };
            var options2 = {
                title: '하루에 공부하는 평균 시간은 어느정도 되시나요?',
                hAxis: { title: '1. 30분 이하 \n 2. 1시간 내외 \n 3. 2시간 내외 \n 4. 3시간 내외', minValue: 0, maxValue: 15 },
                vAxis: { title: '선택수', minValue: 0, maxValue: 15 },
                legend: 'none'  // 범례
            };
            var options3 = {
                title: '강의를 수강하실 때 주로 어떤 기기를 사용하시나요?',
                hAxis: { title: '질문3', minValue: 0, maxValue: 15 },
                vAxis: { title: '선택수', minValue: 0, maxValue: 15 },
                legend: 'none'  // 범례
            };

            var chart1 = new google.visualization.ScatterChart(document.getElementById('chart_div1'));
            var chart2 = new google.visualization.ScatterChart(document.getElementById('chart_div2'));
            var chart3 = new google.visualization.ScatterChart(document.getElementById('chart_div3'));

            chart1.draw(data1, options1);
            chart2.draw(data2, options2);
            chart3.draw(data3, options3);
        }
        
        window.addEventListener("resize", drawChart, false);
    </script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
    <style>
        .vh-50 {
            height: 50vh;
        }
    </style>
</head>
<body>
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
                    href="/admin"
                    target="_self"
                    class="text-decoration-none text-secondary"
                    >회원관리</a
                  >
                </li>
                <li class="border-top border-1 p-2">
                  <a
                    href="/admin/chart"
                    target="_self"
                    class="text-decoration-none text-secondary"
                    >통계</a
                  >
                </li>
              </ul>
            </nav>
          </div>
            <h1>통계</h1>
            <br />
            <div class="row vh-50">
                <div class="col-4" id="chart_div1"></div>
                <div class="col-4" id="chart_div2"></div>
                <div class="col-4" id="chart_div3"></div>
            </div>


          </div>
        </div>
      </div>
    </div>
    <%@ include file= "/WEB-INF/views/main/footer.jsp" %>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>
  </body>
</html>
