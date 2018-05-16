<%@page import="semi.service.ProductService"%>
<%@page import="java.util.List"%>
<%@page import="semi.dao.ProductDao"%>
<%@page import="semi.vo.Category"%>
<%@page import="semi.vo.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	.container {
		min-width: 1280px;
	}
	
	.navbar-right , .navbar-left {
		position: relative;
		width: 420px;
		border-collapse: collapse;
		text-align: center;
	}

	.navbar-fixed-top {
		border-collapse: collapse;
	}

	.top-mini-nav {
		font-size: 9px;
	}
	
	.empty-top-div  , .empty-top-div *{
		height: 50px;
	}
	
	.main-title {
		text-align: center;
		margin-top: 90px;
	}
	
	.main-category-black {
		color: black;
		font-weight: normal;
		font-size: 13px;
		margin-left: 50px;
		margin-right: 50px;
	}
	
	.main-category-red {
		color: rgb(197,45,45)";
		font-weight: normal;
		font-size: 13px;
		margin-left: 50px;
		margin-right: 50px;
	}
	
	#id-main-category {
		margin-top: 50px;
	}
	
	#id-main-category-ul {
		vertical-align: middle;
		text-align: center;
		border-style: solid;
		border-right: none;
		border-left: none;
		border-width: 1px;
		border-color: rgb(200,200,200);
		margin-bottom: 0px;
		padding-bottom: 0px;
		height: 50px;
		background-color: white;
	}
	
	#id-main-category-ul li , #id-main-category li a{
		height: 50px;
	}
</style>
<%
	request.setCharacterEncoding("UTF-8");
 	Customer loggedInUser = (Customer)session.getAttribute("logged-in-user");
 	ProductService productService = ProductService.getInstance();
 	List<Category> mainCategories = productService.getCategoriesByLevel(1);
%>   
<script>
	var navTopIsFixed = false;

	$(window).scroll(function() {
		var scrollTop = $(this).scrollTop();
	    if (scrollTop >= 152) {
	    	fixMainCategory();
	    } else {
	    	releaseMainCategory();
	    }
	});

	function releaseMainCategory(){
		if(navTopIsFixed){
			var main = document.getElementById("id-main-category");
			main.classList.remove("navbar-fixed-top");
			var mainContents = document.getElementById("id-main-contents");
			mainContents.style.marginTop = "0px";
			navTopIsFixed = false;
		}
	}

	function fixMainCategory(){
		if(!navTopIsFixed){
			var main = document.getElementById("id-main-category");
			main.classList.add("navbar-fixed-top");
			var mainContents = document.getElementById("id-main-contents");
			mainContents.style.marginTop = "90px";
			navTopIsFixed = true;
		}
	}
</script>
<div class="container col-xs-12">
	<div class="top-mini-nav">
		<nav class="nav navbar-default navbar-fixed-top">
			<div class="row">
				<div class="col-xs-6 col-sm-6">
					<ul class="nav navbar-nav navbar-left">
						<li><a href="/semi/notice/list.jsp">NOTICE</a></li>
						<li><a href="/semi/review/list.jsp">REVIEW</a></li>
						<li><a href="/semi/qna/list.jsp">Q&A</a></li>
						<li><a href="/semi/event/list.jsp">EVENT</a></li>
					</ul>
				</div>
				<div class="col-xs-6 col-sm-6">
					<ul class="nav navbar-nav navbar-right">
					<%
						if(loggedInUser != null){
					%>		
						<li><a href="/semi/member/logout.jsp">LOGOUT</a></li>
						<li><a href="/semi/member/modifyform.jsp">MY INFO</a></li>
						<li><a href="/semi/myshop/orderlist.jsp">ORDER</a></li>
						<li><a href="/semi/myshop/mypage.jsp">MY PAGE</a></li>
					<%		
						} else {
					%>		
						<li><a href="/semi/member/loginform.jsp">LOGIN</a></li>
						<li><a href="/semi/member/joinform.jsp">회원가입</a></li>
						<li><a href="" onclick="showNoSessionAlert(); return false;">MY INFO</a></li>
						<li><a href="" onclick="showNoSessionAlert(); return false;">ORDER</a></li>
						<li><a href="" onclick="showNoSessionAlert(); return false;">MY PAGE</a></li>
					<%		
						}
					%>
					</ul>
				</div>
			</div>
		</nav>
		<div class="main-title">
			<div class="row">
				<div class="col-xs-12 col-sm-12">
					<a href="/semi/index.jsp"><img alt="main-title" src="/semi/images/kyh/main-title.png"></a>
				</div>
			</div>
		</div>
		<div class="main-category" id="id-main-category">
			<div class="row">
				<div class="col-xs-12 col-sm-12">
			       	<ul class="list-inline" id="id-main-category-ul">
			       		<%
			       			for(Category category : mainCategories){
			       		%>
			       			<li class="list-inline-item"><a class="main-category-black" href="/semi/product/list.jsp?category-no=<%=category.getNo() %>"><br><%=category.getName() %></a></li>
			       		<%
			       			}
			       		%>
			        </ul>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
	function showNoSessionAlert () {
		alert("로그인이 필요한 서비스 입니다");
		return;
	}
</script>