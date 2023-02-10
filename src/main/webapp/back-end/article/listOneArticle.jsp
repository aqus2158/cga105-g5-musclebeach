<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.musclebeach.article.model.*"%>
<%-- 此頁暫練習採用 Script 的寫法取值 --%>

<%
ArticleVO articleVO = (ArticleVO) request.getAttribute("articleVO"); 
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Muscle Beach 後台首頁</title>
<link rel="canonical"
	href="https://getbootstrap.com/docs/5.3/examples/headers/" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css" />
<link rel="canonical"
	href="https://getbootstrap.com/docs/5.3/examples/sidebars/" />
<link
	href="<%=request.getContextPath()%>/back-end/resources/assets/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<style type="text/css"></style>
<link
	href="<%=request.getContextPath()%>/back-end/resources/index/index.css"
	rel="stylesheet" />
<!-- Flaticon Font -->
<link
	href="<%=request.getContextPath()%>/back-end/resources/lib/flaticon/font/flaticon.css"
	rel="stylesheet" />
<!-- DataTables  -->
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css">


<!-- jq DataTables -->
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script
	src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
<title>所有課程資料</title>
<style>
        div#v-pills-article {
            width: 100%;
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-wrap: wrap;
        }
  table#table-1 {
	background-color: #CCCCFF;
    border: 2px solid black;
    text-align: center;
  }
  table#table-1 h4 {
    color: red;
    display: block;
    margin-bottom: 1px;
  }
  h4 {
    color: blue;
    display: inline;
  }
</style>

<style>
  table {
	width: 800px;
	background-color: white;
	margin-top: 5px;
	margin-bottom: 5px;
  }
  table, th, td {
    border: 1px solid #CCCCFF;
  }
  th, td {
    padding: 5px;
    text-align: center;
  }
</style>

</head>
<body bgcolor='white'>
	<!-- ======================================== header 開始 ======================================== -->
	<header class="p-3 text-bg-dark">
		<div class="container">
			<div
				class="d-flex flex-wrap align-items-center justify-content-between">
				<div class="header_1">
					<i class="flaticon-barbell"></i> <span>Muscle Beach</span>
				</div>
				<div class="header_2">
					<span style="margin-right: 50px">Welcome, user !</span>
					<button type="button" class="btn btn-outline-light"
						style="margin-right: 5px">修改密碼</button>
					<button type="button" class="btn btn-outline-light">登出</button>
				</div>
			</div>
		</div>
	</header>
	<!-- ======================================== sidebar 開始 ======================================== -->
	<main class="d-flex flex-nowrap">
		<div class="d-flex flex-column flex-shrink-0 p-3"
			style="width: 220px; background-color: rgb(110, 109, 109)">
			<ul class="nav nav-pills flex-column mb-auto" id="v-pills-tab"
				role="tablist" aria-orientation="vertical"
				style="text-align: center">
				<li class="nav-item"><a class="nav-link text-white"
					id="v-pills-home-tab" data-bs-toggle="pill"
					data-bs-target="#v-pills-home" type="button" role="tab"
					aria-controls="v-pills-home" aria-selected="true"
					aria-current="page" style="font-size: 1.5rem">
						<i class="bi bi-house-door" style="margin-right: 8px"></i> 首頁
				</a></li>
				<hr />
				<li class="nav-item"><a class="nav-link text-white"
					id="v-pills-employee-tab" data-bs-toggle="pill"
					data-bs-target="#v-pills-employee" type="button" role="tab"
					aria-controls="v-pills-employee" aria-selected="false">
						<i class="bi bi-person" style="color: white; margin: 5px"></i>
						員工管理
				</a></li>
				<li><a class="nav-link text-white" id="v-pills-member-tab"
					data-bs-toggle="pill" data-bs-target="#v-pills-member"
					type="button" role="tab" aria-controls="v-pills-member"
					aria-selected="false"> <i
						class="bi bi-person-circle" style="color: white; margin: 5px"></i>
						會員管理
				</a></li>
				<li><a class="nav-link text-white" id="v-pills-shop-tab"
					data-bs-toggle="pill" data-bs-target="#v-pills-shop" type="button"
					role="tab" aria-controls="v-pills-shop" aria-selected="false">
						<i class="bi bi-shop" style="color: white; margin: 5px"></i> 商城管理
				</a></li>
				<li><a class="nav-link text-white" id="v-pills-coach-tab"
					data-bs-toggle="pill" data-bs-target="#v-pills-coach" type="button"
					role="tab" aria-controls="v-pills-coach" aria-selected="false">
						<i class="bi bi-universal-access"
						style="color: white; margin: 5px"></i> 教練管理
				</a></li>
				<li><a class="nav-link  text-white"
					id="v-pills-class-tab" data-bs-toggle="pill"
					data-bs-target="#v-pills-class" type="button" role="tab"
					aria-controls="v-pills-class" aria-selected="false"
					onclick="location.href='<%=request.getContextPath()%>/back-end/course/classSchedule/select_page.jsp';">
						<i class="bi bi-calendar2-week" style="color: white; margin: 5px"></i>
						課程管理
				</a></li>
				<li><a class="nav-link text-white" id="v-pills-room-tab"
					data-bs-toggle="pill" data-bs-target="#v-pills-room" type="button"
					role="tab" aria-controls="v-pills-room" aria-selected="false">
						<i class="bi bi-building" style="color: white; margin: 5px"></i>
						場地管理
				</a></li>
				<li><a class="nav-link  active text-white" id="v-pills-article-tab"
					data-bs-toggle="pill" data-bs-target="#v-pills-article"
					type="button" role="tab" aria-controls="v-pills-article"
					aria-selected="false"
					onclick="location.href='<%=request.getContextPath()%>/back-end/article/articleReport/listAllArticleReport.jsp';"
					> <i
						class="bi bi-chat-right-text" style="color: white; margin: 5px"
						></i>
						論壇管理
				</a></li>
				<li><a class="nav-link text-white" id="v-pills-service-tab"
					data-bs-toggle="pill" data-bs-target="#v-pills-service"
					type="button" role="tab" aria-controls="v-pills-service"
					aria-selected="false"> <i
						class="bi bi-envelope" style="color: white; margin: 5px"></i> 客服管理
				</a></li>
			</ul>
			<hr />
			<div class="mx-auto d-flex mt-3 mb-3 text-muted">&copy; 2022</div>
		</div>
		<div class="tab-content" id="v-pills-tabContent">
			<!-- ============================================ 首頁 ============================================ -->
			<div class="tab-pane fade" id="v-pills-home" role="tabpanel"
				aria-labelledby="v-pills-home-tab" tabindex="0">
				<img src="/image/welcome.gif" style="width: 96%" alt="" />
			</div>

			<!-- ========================================= 論壇管理 ========================================= -->
			 <div
          class="tab-pane fade show active"
          id="v-pills-article"
          role="tabpanel"
          aria-labelledby="v-pills-article-tab"
          tabindex="0"
          style="border: 2px solid rgb(253, 250, 66)"
        >



				<table>
					<thead>
						<tr>
							<th>文章編號</th>
							<th>會員編號</th>
							<th>文章類別編號</th>
							<th>文章標題</th>
							<th>文章內容</th>
							<th>發表時間</th>
							<th>最後編輯時間</th>
							<th>文章狀態</th>
							
						</tr>
					</thead>
					<tbody>
						<c:forEach var="articleReportVO" items="${list}">
							<tr>
							<td>${articleVO.artID}</td>
							<td>${articleVO.memID}</td>
							<td>${articleVO.typeID}</td>
							<td>${articleVO.artTitle}</td>
							<td>${articleVO.artContent}</td>
							<td>${articleVO.artStime}</td> 
							<td>${articleVO.artLtime}</td>
							<td>
							<FORM METHOD="post" ACTION="article.do" name="form1"
                                  style="margin-bottom: 0px;"> 
							<select name="artStatus">	
        					<option value="1"${(articleVO.artStatus==1)?'selected':'' }>顯示</option>
        					<option value="0"${(articleVO.artStatus==0)?'selected':'' }>隱藏</option>
    						</select>
    						</td>
								 
							<td>

							<input type="hidden" name="action" value="updateStatus">
							<input type="hidden" name="artID" value="<%=articleVO.getArtID()%>">
							<input type="hidden" name="memID" value="<%=articleVO.getMemID()%>">
							<input type="hidden" name="typeID" value="<%=articleVO.getTypeID()%>">
							<input type="hidden" name="artTitle" value="<%=articleVO.getArtTitle()%>">
							<input type="hidden" name="artContent" value="<%=articleVO.getArtContent()%>">
							<input type="hidden" name="artStime" value="<%=articleVO.getArtStime()%>">
							<input type="hidden" name="artLtime" value="<%=articleVO.getArtLtime()%>">
							<input type="submit" value="送出修改">
                             </FORM>
								</td>
								

							</tr>
						</c:forEach>
					</tbody>
				</table>

			</div>
	</main>
	<script
		src="<%=request.getContextPath()%>/back-end/resources/js/popper.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/back-end/resources/js/bootstrap.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/back-end/resources/assets/dist/js/bootstrap.bundle.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/back-end/resources/index/sidebars.js"></script>






</body>
</html>