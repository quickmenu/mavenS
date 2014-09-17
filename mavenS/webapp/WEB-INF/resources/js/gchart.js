// 맵 차트
google.load("visualization", "1", {packages:["map"]});
google.setOnLoadCallback(drawPChart);
function drawPChart() {
  var data = google.visualization.arrayToDataTable([
    ['Lat', 'Long', 'Name'],
    [37.4232, -122.0853, 'Work'],
    [37.4289, -122.1697, 'University'],
    [37.6153, -122.3900, 'Airport'],
    [37.4422, -122.1731, 'Shopping']
  ]);

  var options = {
    icons: {
      default: {
        normal: 'http://icons.iconarchive.com/icons/icons-land/vista-map-markers/48/Map-Marker-Ball-Azure-icon.png',
        selected: 'http://icons.iconarchive.com/icons/icons-land/vista-map-markers/48/Map-Marker-Ball-Right-Azure-icon.png'
      }
    }
  };

  var map = new google.visualization.Map(document.getElementById('map_markers_div'));
  map.draw(data, {showTip: true});
}

// 파이 차트
google.load("visualization", "1", {packages:["corechart"]});
google.setOnLoadCallback(drawMChart);
function drawMChart() {

  var data = google.visualization.arrayToDataTable([
    ['Task', '점유율'],
    ['리그오브레전드',     32],
    ['디아블로',      14],
    ['서든어택',  9],
    ['피파온라인', 7],
    ['아이온',    4],
    ['기타', 34]
  ]);

  var options = {
    is3D: true
  };

  var chart = new google.visualization.PieChart(document.getElementById('piechart'));
  chart.draw(data, options);
}

// 선형 차트
google.load("visualization", "1", {packages:["corechart"]});
google.setOnLoadCallback(drawLChart);
function drawLChart() {
  var data = google.visualization.arrayToDataTable([
    ['Year', 'Sales', 'Expenses'],
    ['2004',  1000,      400],
    ['2005',  1170,      460],
    ['2006',  660,       1120],
    ['2007',  1030,      540]
  ]);

  var options = {
	title: 'Company Performance'
  };

  var chart = new google.visualization.LineChart(document.getElementById('linechart'));

  chart.draw(data, options);
}

// 막대 차트
google.load("visualization", "1", {packages:["corechart"]});
google.setOnLoadCallback(drawCChart);
function drawCChart() {

  var data = google.visualization.arrayToDataTable([
    ['Year', 'Sales', 'Expenses'],
    ['2004',  1000,      400],
    ['2005',  1170,      460],
    ['2006',  660,       1120],
    ['2007',  1030,      540]
  ]);

  var options = {
    title: 'Company Performance',
    hAxis: {title: 'Year', titleTextStyle: {color: 'red'}}
  };

  var chart = new google.visualization.ColumnChart(document.getElementById('columnchart'));

  chart.draw(data, options);
}

// 영역 차트
google.load("visualization", "1", {packages:["corechart"]});
google.setOnLoadCallback(drawAChart);
function drawAChart() {
  var data = google.visualization.arrayToDataTable([
    ['Year', 'Sales', 'Expenses'],
    ['2013',  1000,      400],
    ['2014',  1170,      460],
    ['2015',  660,       1120],
    ['2016',  1030,      540]
  ]);

  var options = {
    title: 'Company Performance',
    hAxis: {title: 'Year',  titleTextStyle: {color: '#333'}},
    vAxis: {minValue: 0}
  };

  var chart = new google.visualization.AreaChart(document.getElementById('areachart'));
  chart.draw(data, options);
}