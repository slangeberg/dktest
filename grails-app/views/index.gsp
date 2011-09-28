<%@page import="dktest.Application"%>
<%@page import="dktest.Page"%>

<html>
<head>
<title>Welcome to DK</title>
<meta name="layout" content="main" />

<style type="text/css" media="screen">

html, body {
	height: 100%;
	width: 100%;
}

#nav {
	margin-top: 20px;
	margin-left: 30px;
	width: 228px;
	float: left;
}

.homePagePanel * {
	margin: 0px;
}

.homePagePanel .panelBody ul {
	list-style-type: none;
	margin-bottom: 10px;
}

.homePagePanel .panelBody h1 {
	text-transform: uppercase;
	font-size: 1.1em;
	margin-bottom: 10px;
}

.homePagePanel .panelBody {
	background: url(images/leftnav_midstretch.png) repeat-y top;
	margin: 0px;
	padding: 15px;
}

.homePagePanel .panelBtm {
	background: url(images/leftnav_btm.png) no-repeat top;
	height: 20px;
	margin: 0px;
}

.homePagePanel .panelTop {
	background: url(images/leftnav_top.png) no-repeat top;
	height: 11px;
	margin: 0px;
}

h2 {
	margin-top: 15px;
	margin-bottom: 15px;
	font-size: 1.2em;
}

#pageBody {
	margin-left: 280px;
	margin-right: 20px;
}

.footer {
	color: #666666;
    font: 11px/15px Arial,Helvetica,sans-serif;

	position:fixed;
	bottom:0px; left: 10px; right: 10px;
	
	background: none repeat scroll 0 0 #F4F4F4;
    padding: 20px 30px 10px;
}	
</style>
</head>

<%
	def app = Application.get(5)
	def pages = app.pages
%>

<body>
	<div id="nav">
		<div class="homePagePanel">
			<div class="panelTop"></div>
			<div class="panelBody">
				<g:each var="page" in="${pages}">
					<g:link controller="page" action="show" id="${page.id}">
						<h1>${page.name}</h1>
					</g:link>
					<ul>
						<li>${page.name} subpages tbd...</li>
					</ul>
				</g:each>
			</div>
			<div class="panelBtm"></div>
		</div>
	</div>
	<div id="pageBody">
		<h1>Welcome to DK</h1>
		
		<br/><br/>
		
		<g:link url="controllers.gsp">Controller List</g:link>
	</div>
	
	<div class="footer">
		<g:link url="http://dktest.com">Company, Inc.</g:link>
	</div>
</body>
</html>
