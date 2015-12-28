<%@ page import="org.icddrb.fpb.db.UserInfo" %>

<%
    UserInfo userLogInfo = (UserInfo) request.getSession().getAttribute("fpbUser");
%>
<div class="top">
    <div class="split">
        <%
            if(userLogInfo==null){
        %>
           <div class="logout"><img src="gfx/icon-logout.gif" align="left" alt="Login" /> <a href="/fpb/FamilyPlanningLogin.trans?reqCode=promptLogin">Login</a></div>
        <%
            }else{
        %>
        <div class="logout"><img src="gfx/icon-logout.gif" align="left" alt="Logout" /> <a href="/fpb/FamilyPlanningLogin.trans?reqCode=logout">Logout</a></div>
        <div><img src="gfx/icon-welcome.gif" align="left" alt="Welcome" /> Welcome Md. Abdur Razzak Ali Sorker</div>
        <%

            }
        %>


    </div>
</div> 
<div class="bottom">
	<div class="split"><h1>icddrb</h1></div>
	<div class="softname">Directorate of Family Planning,<br /> Bangladesh</div>
	<div class="unicef">&nbsp;</div>
</div>