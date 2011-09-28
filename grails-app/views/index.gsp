<%@page import="dktest.Application"%>
<%@page import="dktest.Page"%>

<html>
    <head>
        <title>Welcome to DK</title>
        <meta name="layout" content="main" />
        <style type="text/css" media="screen">

        #nav {
            margin-top:20px;
            margin-left:30px;
            width:228px;
            float:left;

        }
        .homePagePanel * {
            margin:0px;
        }
        .homePagePanel .panelBody ul {
            list-style-type:none;
            margin-bottom:10px;
        }
        .homePagePanel .panelBody h1 {
            text-transform:uppercase;
            font-size:1.1em;
            margin-bottom:10px;
        }
        .homePagePanel .panelBody {
            background: url(images/leftnav_midstretch.png) repeat-y top;
            margin:0px;
            padding:15px;
        }
        .homePagePanel .panelBtm {
            background: url(images/leftnav_btm.png) no-repeat top;
            height:20px;
            margin:0px;
        }

        .homePagePanel .panelTop {
            background: url(images/leftnav_top.png) no-repeat top;
            height:11px;
            margin:0px;
        }
        h2 {
            margin-top:15px;
            margin-bottom:15px;
            font-size:1.2em;
        }
        #pageBody {
            margin-left:280px;
            margin-right:20px;
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
                	
                    <g:link controller="page" action="show" id="${pages[0].id}" ><h1>${pages[0].name}</h1></g:link>
                    <ul>
                        <li>subpage tbd...</li>
                    </ul>
                    
<%--                        <g:set var="pluginManager"--%>
<%--                               value="${applicationContext.getBean('pluginManager')}"></g:set>--%>

<%--                        <g:each var="plugin" in="${pluginManager.allPlugins}">--%>
<%--                            <li>${plugin.name} - ${plugin.version}</li>--%>
<%--                        </g:each>--%>

                 
                </div>
                <div class="panelBtm"></div>
            </div>
        </div>
        <div id="pageBody">
            <h1>Welcome to DK</h1>

            <div id="controllerList" class="dialog">
<%--                <h2>Available Controllers:</h2>--%>
<%--                <ul>--%>
<%--                    <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">--%>
<%--                        <li class="controller"><g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link></li>--%>
<%--                    </g:each>--%>
<%--                </ul>--%>
				<p/>
				<p><g:link  url="controllers.gsp">Controllers List</g:link></p>
            </div>
        </div>
    </body>
</html>
