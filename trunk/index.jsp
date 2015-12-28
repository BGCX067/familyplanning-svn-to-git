<%@ include file="common/Taglib.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>

	<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
	<title>icddrb</title>

    <link href="css/style.css" rel="stylesheet" type="text/css">
    <link href="css/login.css" rel="stylesheet" type="text/css">
    <link href="css/style_text.css" rel="stylesheet" type="text/css">
    <link href="css/c-grey.css" rel="stylesheet" type="text/css">

    <link href="css/form.css" rel="stylesheet" type="text/css">
    <link href="css/messages.css" rel="stylesheet" type="text/css">

    <script type="text/javascript" src="js/jquery-1.5.2.min.js"></script>

	<!--[if lte IE 8]>
		<script type="text/javascript" src="js/excanvas.min.js"></script>
	<![endif]-->
    <script type="text/javascript">

    function setActionLocal(action)
    {
        document.forms[0].action = action;
        document.forms[0].submit();
        return true;
    }

    </script>

</head>

<body>

<div class="wrapper">
	<div class="container">

		<!--[if !IE]> START TOP <![endif]-->
		<%@ include file="layout/header.jsp"%>
		<!--[if !IE]> END TOP <![endif]-->

        <!--[if !IE]> Start Login Form <![endif]-->

        <div class="box">
			<div class="title"><h2>Login</h2></div>
			<div class="content forms">
               <html:form action="/FamilyPlanningLogin?reqCode=processLogin" method="post">

                <logic:present name="errorMessage">
                  <div class="message red"><bean:write name="errorMessage"/></div>
                </logic:present>

                   <logic:present name="successMessage">
                     <div class="message green"><bean:write name="successMessage"/></div>
                   </logic:present>

                     <div class="row">
						<div class="half-left">
							<label>Username:</label>
                            <html:text property="fpbUserInfo.userID" name="fpbLoginForm" styleId="userID" styleClass="small"/>
                        </div>

						<div class="half">
							<label>Password:</label>
                            <html:text property="fpbUserInfo.userPassword" name="fpbLoginForm" styleId="userPassword" styleClass="small"/>
                        </div>
					</div>
					<div class="row logged">
						<div class="buttons">
							<button type="button" onclick="setActionLocal('/fpb/FamilyPlanningLogin.trans?reqCode=processLogin')"><span>Login</span></button>
						</div>
					</div>
				</html:form>
			</div>
		</div>
        <!--[if !IE]> End TOP <![endif]-->
        <!--[if !IE]> START FOOTER <![endif]-->
		<%@ include file="layout/footer.jsp"%>
		<!--[if !IE]> END FOOTER <![endif]-->
	</div>
</div>
<!--<script type="text/javascript" src="js/hoverIntent.js"></script>-->
<!--<script type="text/javascript" src="js/jquery.datepicker.js"></script>-->
<!--<script type="text/javascript" src="js/jquery.filestyle.mini.js"></script>-->
<!--<script type="text/javascript" src="js/jquery.filestyle.mini.js"></script>-->
<!--<script type="text/javascript" src="js/jquery.flot.js"></script>-->
<!--<script type="text/javascript" src="js/jquery.graphtable-0.2.js"></script>-->


<script type="text/javascript" src="js/jquery.pngFix.js"></script>
<script type="text/javascript" src="js/jquery-ui.js"></script>
<script type="text/javascript" src="js/superfish.js"></script>
<script type="text/javascript" src="js/supersubs.js"></script>


<!--<script type="text/javascript" src="js/jquery.sparkbox-select.js"></script>-->
<!--<script type="text/javascript" src="js/jquery.wysiwyg.js"></script>-->
<!--<script type="text/javascript" src="js/plugins/wysiwyg.rmFormat.js"></script>-->
<!--<script type="text/javascript" src="js/controls/wysiwyg.link.js"></script>-->
<!--<script type="text/javascript" src="js/controls/wysiwyg.table.js"></script>-->
<!--<script type="text/javascript" src="js/controls/wysiwyg.image.js"></script>-->


<script type="text/javascript" src="js/inline.js"></script>
</body>
</html> 