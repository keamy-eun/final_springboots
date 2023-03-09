<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file= "/WEB-INF/views/main/header.jsp" %>
<head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        google.charts.load('current', { 'packages': ['corechart'] });
        google.charts.setOnLoadCallback(drawChart);
        let datasArray = ${ dataArray };
        function drawChart() {

            var data = google.visualization.arrayToDataTable([
                ['Age', 'Weight'],
                [8, 12],
                [4, 5.5],
                [11, 14],
                [4, 5],
                [3, 3.5],
                [6.5, 7]
            ]);

            var data = google.visualization.arrayToDataTable(datasArray);
            let target_element = document.getElementById('chart_div');
            target_element.parentElement.clientHeight;
            var options = {
                title: 'Age vs. Weight comparison',
                hAxis: { title: 'Age', minValue: 0, maxValue: 15 },
                vAxis: { title: 'Weight', minValue: 0, maxValue: 15 },
                legend: 'none'  // 범례
            };

            var chart = new google.visualization.ScatterChart(document.getElementById('chart_div'));

            chart.draw(data, options);
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
                <div class="col-5" id="chart_div">
                </div>
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
