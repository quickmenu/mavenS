<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>INDEX</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi" />
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=10" />

	<!-- jQuery Mobile -->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/jquery.mobile-1.4.3.min.css" />" />
	<script src="<c:url value="/resources/js/jquery-2.1.1.min.js" />"></script>
	<script src="<c:url value="/resources/js/jquery.mobile-1.4.3.min.js" />"></script>

	<!-- IMPORTANT!!! Include the stylesheet *BEFORE* the JavaScript (necessary for Safari 3.1.1) -->
	<script src="<c:url value="/resources/js/jquery.easing.1.3.js" />" type="text/javascript"></script>
	<script src="<c:url value="/resources/js/jquery.kwicks-1.5.1.pack.js" />" type="text/javascript"></script>
	<script src="<c:url value="/resources/js/jquery.kwicks-1.5.1.pack.js" />" type="text/javascript"></script>
	<script type="text/javascript">
		$().ready(function() {
			$('.kwicks').kwicks({
				max : 200,
				spacing : 1
			});
		});
	</script>

	<!-- masonry -->
	<script src="<c:url value="/resources/js/masonry.pkgd.min.js" />"></script>
	<script type="text/javascript">
		jQuery(window).load(function() {
			jQuery(function(){
				jQuery('#container').masonry({
					columnWidth: 10,
					itemSelector: '.item'
				});
			});
		});

		$( window ).resize(function() {
			$( "#nav-panel" ).panel( "close" );
			drawPChart();
			drawMChart();
		});
	</script>

	<!-- google chart -->
	<script type="text/javascript" src="https://www.google.com/jsapi"></script>
	<script src="<c:url value="/resources/js/gchart.js" />"></script>

	<!-- common -->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/common.css" />">
	<script type="text/javascript">
		function link(path) {
			if(path!="#") {
				window.location.href=path;
			}
		}
	</script>
</head>

<body>
	<div data-role="page">
		<!-- panel -->
		<div data-role="panel" id="nav-panel" data-position="left" data-display="overlay">
		    <ul data-role="listview">
		    	<li data-role="collapsible" data-inset="false" data-iconpos="right">
	              <h3><a class="ui-btn ui-icon-user ui-btn-icon-left ui-corner-all" style="text-align:left; margin:0px; border:none;">TEST USER</a></h3>
	              <ul data-role="listview">
	                <li data-icon="action"><a href="#" style="padding:5px 15px;">로그아웃</a></li>
	                <li data-icon="edit"><a href="#" style="padding:5px 15px;">정보수정</a></li>
	              </ul>
	            </li><!-- /collapsible -->
	            <li data-role="list-divider" style="border-top:none; text-align:center;">MENU</li>
	            <li data-icon=""><a href="#" onClick="javascript:link('#');">HOME</a></li>
	            <li data-icon=""><a href="#" onClick="javascript:link('http://demos.jquerymobile.com/1.4.4/');">jQuery Mobile</a></li>
	            <li data-icon=""><a href="#" onClick="javascript:link('#');">NONE</a></li>
	            <li data-icon=""><a href="#" onClick="javascript:link('#');">NONE</a></li>
	            <li data-icon=""><a href="#" onClick="javascript:link('#');">NONE</a></li>
	        </ul>
		</div><!-- /panel -->

		<!-- header -->
		<div data-role="header" data-theme="a" style="height:50px;">
			<div id="custom-border-radius">
    			<a id="mobile" href="#nav-panel" class="ui-btn ui-icon-bars ui-btn-icon-notext ui-corner-all" href="#">Panel</a>
			</div>


			<div class="logo">
				<h1><font color="#771183">NMP</font></h1>
			</div>
		    <ul class="kwicks horizontal">
				<li id="kwick_1" onClick="javascript:link('#');">HOME</li>
				<li id="kwick_2" onClick="javascript:link('http://demos.jquerymobile.com/1.4.4/');">jQuery Mobile</li>
				<li id="kwick_3" onClick="javascript:link('#');">NONE</li>
				<li id="kwick_4" onClick="javascript:link('#');">NONE</li>
				<li id="kwick_5" onClick="javascript:link('#');">NONE</li>
			</ul>
			<div class="login">
				<a class="ui-btn ui-icon-user ui-btn-icon-left ui-corner-all">TEST USER</a>
			</div>
		</div>

		<!-- content -->
		<div role="main" class="ui-content jqm-content jqm-fullwidth">
			<div id="container" class="js-masonry" data-masonry-options='{ "columnWidth": 10, "itemSelector": ".item" }'>
				<div class="item">
					<div class="ui-corner-all custom-corners">
					<div class="ui-bar ui-bar-a">
					<h3>PCë°© ì ì ì¨</h3>
					</div>
					<div id="piechart" class="ui-body ui-body-a" style="height:300px;">
					</div>
					</div>
				</div>
				<div id="content" class="item">
					<div class="ui-corner-all custom-corners">
						<div class="ui-bar ui-bar-a">
						<h3>'규제지옥'에 국산 온라인 PC게임 '시들시들'</h3>
						</div>
						<div class="ui-body ui-body-a">
						<p>라이엇게임즈의 리그오브레전드(League Of Legend, 이하 LOL)가 국내 온라인 게임 인기순위 1위를 90주째(게임트릭스 17일 순위 기준) 지키고 있는 가운데 국내 게임사들이 이 시장에서 맥을 추지 못하고 있는 것으로 나타났다.
						특히 인기순위 '톱10'에 포함된 5개 외산 게임의 점유율만 60%에 육박할 정도로 외국게임업체들이 온라인 게임 시장을 장악했다.
						LOL이 32.45%로 여전히 압도적 1위를 지켰고 최근 확장팩인 ‘영혼을 거두는 자’를 출시하며 또 한 번 바람몰이에 나선 블리자드의 디아블로3가 14.29%로 2위를 차지해 외국 게임이 선두권을 확고히 굳히고 있다. LOL과 디아블로3만으로도 온라인 PC게임 시장의 절반 가까이를 차지하고 있는 셈이다.
						국내 온라인게임시장이 각종 규제 및 비판에 직면하며 생기를 잃어가는 반면 세계를 제패하고 있는 '수입산' 게임들이 시장을 점령하고 있는 것.
						인기순위 '톱10' 가운데 국산 게임이 5개를 차지했지만 순위가 주로 뒤쪽에 몰려 있다. 
						순수 국산 게임 중에서는 3위로 떨어진 넥슨GT의 FPS 서든어택이 9.32%, 엔씨소프트의 MMORPG 3총사 아이온, 블레이드&소울, 리니지가 5,6,8위에 올랐다.
						넥슨(대표 박지원)과 엔씨소프트(대표 김택진)를 제외하면 10위권에 이름을 올린 국내 게임업체가 전무한 상황이다.
						4위를 차지한 피파온라인3(7.9%)는 넥슨이 국내 서비스를 맡고 있지만 EA스포츠가 개발한 외산 게임이다.</p>
						</div>
					</div>
					
					
				</div>
				<div class="item">
					<div class="ui-corner-all custom-corners">
						<div class="ui-bar ui-bar-a">
						<h3>1위. 리그 오브 레전드</h3>
						</div>
						<div class="ui-body ui-body-a">
						<p>《리그 오브 레전드》(League of Legends, LoL)는 라이엇 게임즈에서 제작, 서비스하는 멀티플레이어 온라인 배틀 아레나 게임이다. 워크래프트 3의 유즈맵 DotA(Defense of the Ancients)를 바탕으로 만들어졌으며, 2009년 10월 27일 부터 정식 서비스를 시작하였다. 제작자는 도타 올스타즈의 역대 제작자들 중 한명이었던 프로그래머 구인수(Guinsoo)이다.</p>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="ui-corner-all custom-corners">
						<div class="ui-bar ui-bar-a">
						<h3>2위. 디아블로 III</h3>
						</div>
						<div class="ui-body ui-body-a">
						<p>《디아블로 III》(Diablo III) 는 미국 블리자드 엔터테인먼트가 개발한 다크 판타지/호러 액션 롤플레잉 게임으로, 디아블로 시리즈의 세 번째 에피소드를 담고 있다. 이 게임은 논리적 사고나 문제 해결보다는 투쟁과 폭력을 주요 게임 진행 도구로 삼아 암흑 세계에서 전투를 펼쳐나가는 구조이다. 디아블로 III은 2008년 6월 28일 프랑스 파리 시에서 열린 월드와이드 인비테이셔널 행사에서 공식 발표되었으나, 그 전부터 공식 홈페이지에 티저 광고를 걸어 팬들을 기대감에 휩싸이게 했었다.[5] 2012년 5월 15일에 북아메리카, 남아메리카, 유럽, 아시아 일부 지역[6] 에 발매되었다. 러시아 지역의 발매는 2012년 6월 7일 이루어질 예정이다[7] . 대한민국에서는 2012년 3월 15일 오후 10시부터 디지털 상품의 예약 판매를 시작했으며, 2012년 5월 14일전야제와 함께 패키지 상품 판매를 시작하였으며,4000개의 한정 소장판 판매소식에 5000명의 게이머들이 모여들어 패키지 판매 장소인 왕십리역 인근 판매점 앞에서 텐트를 치고 노숙을 마다하지 않는 등,12년의 기다림 끝에 게이머의 품으로 돌아온 디아블로 3의 발매 소식에 게이머들은 뜨거운 반응을 나타냈다. 2012년 5월 15일 정식으로 발매하였다. 2012년 6월 1일, 블리자드 엔터테인먼트의 발표에 따르면, 아시아 서버의 최고 동시접속자 수는 64만 명이고, 그 중 43만 명은 한국 플레이어라고 하였다. 한편, 뜨거운 시장반응과 함께 빈번한 서버접속 불안 현상, 불법 프로그램 사용이 의심되는 계정에 대한 일방적인 게임 계정 압류 등으로 인해 게이머의 불만을 양산하고 있는 등 시장 잡음도 끊이지 않고 이어지고 있다.</p>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="ui-body ui-body-a ui-corner-all" id="map_markers_div" style="height:400px;"></div>
				</div>
				<div class="item banner">
					<div id="banner1" class="ui-body ui-body-a ui-corner-all"></div>
				</div>
				<div class="item banner">
					<div id="banner2" class="ui-body ui-body-a ui-corner-all"></div>
				</div>
				<div class="item banner">
					<div id="banner3" class="ui-body ui-body-a ui-corner-all"></div>
				</div>
				<div class="item banner">
					<div id="banner4" class="ui-body ui-body-a ui-corner-all"></div>
				</div>
			</div>
		</div><!-- /content -->

	</div><!-- page -->
</body>
</html>