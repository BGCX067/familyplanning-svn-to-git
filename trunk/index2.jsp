<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
	<title>icddrb</title>
	<style type="text/css">
        @import url("css/style.css");
        @import url("css/inlog.css");
		@import url('css/style_text.css');
		@import url('css/c-grey.css'); /* COLOR FILE CAN CHANGE TO c-blue.ccs, c-grey.ccs, c-orange.ccs, c-purple.ccs or c-red.ccs */
		@import url('css/form.css');
		@import url('css/messages.css');
	</style>

	<script type="text/javascript" src="js/jquery-1.5.2.min.js"></script>

</head>

<body>

<div class="wrapper">

	<div class="container">
		<!--[if !IE]> START TOP <![endif]-->

		<div class="top">
            <div class="logo"></div>
        </div>
		<!--[if !IE]> END TOP <![endif]-->


		<!--[if !IE]> START LOGIN <![endif]-->
		<div class="box">
			<div class="title"><h2>Login</h2></div>
			<div class="content forms">

				<div class="message blue">
					Provide username and password.
					<img src="gfx/icon-close.gif" alt="Close this item" />
				</div>

				<form action="dashboard.jsp" method="post">

					<div class="row">
						<div class="half-left">
							<label>Username:</label>
							<input type="text" value="Username" />
						</div>

						<div class="half">
							<label>Password:</label>
							<input type="password" value="Password" />
						</div>
					</div>

					<div class="row logged">
						<div class="buttons">
							<button type="submit"><span>Login</span></button>
						</div>
					</div>

				</form>

			</div>
		</div>
		<!--[if !IE]> END LOGIN <![endif]-->

	</div>
</div>

<script type="text/javascript" src="js/jquery.pngFix.js"></script>
<script type="text/javascript" src="js/jquery.sparkbox-select.js"></script>
<script type="text/javascript" src="js/inlog.js"></script>

</body>
</html>