<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>	
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8" /> 
	<title>icddrb</title> 
	
	<style type="text/css"> 
		@import url("css/style.css");
		@import url('css/style_text.css');
		@import url('css/c-grey.css'); /* COLOR FILE CAN CHANGE TO c-blue.ccs, c-grey.ccs, c-orange.ccs, c-purple.ccs or c-red.ccs */ 
		@import url('css/datepicker.css');
		@import url('css/form.css');
		@import url('css/menu.css');
		@import url('css/messages.css');
		@import url('css/statics.css');
		@import url('css/tabs.css');
		@import url('css/wysiwyg.css');
		@import url('css/wysiwyg.modal.css');
		@import url('css/wysiwyg-editor.css');
	</style> 
	
	<script type="text/javascript" src="js/jquery-1.5.2.min.js"></script> 
 
	<!--[if lte IE 8]>
		<script type="text/javascript" src="js/excanvas.min.js"></script>
	<![endif]--> 
	
</head> 
 
<body> 
 
<div class="wrapper"> 
	<div class="container"> 
 
		<!--[if !IE]> START TOP <![endif]-->  
		<div class="top"> 
			<div class="split"><h1>icddrb</h1></div> 
			<div class="split"> 
				<div class="logout"><img src="gfx/icon-logout.gif" align="left" alt="Logout" /> <a href="#">Logout</a></div> 
				<div><img src="gfx/icon-welcome.gif" align="left" alt="Welcome" /> Welcome First, lastname</div> 
			</div> 
		</div> 
		<!--[if !IE]> END TOP <![endif]-->  
		
		<!--[if !IE]> START MENU <![endif]-->  
		<div class="menu"> 
			<ul> 
				<li class="current"><a href="dashboard.jsp">Dashboard</a></li>
				<li class="break"></li> 
				<li> 
					<a href="#">Menu items</a> 
					<ul> 
						<li><a href="#">Add a item</a></li> 
						<li class="break"></li> 
						<li><a href="#">Edit a item</a></li> 
						<li class="break"></li> 
						<li><a href="#">Delete a item</a></li> 
						<li class="break"></li> 
						<li class="current"><a href="#">A active item</a></li> 
						<li class="break"></li> 
						<li> 
							<a href="#">A very very long submenu item</a> 
							<ul> 
								<li class="current"><a href="#">First item</a></li> 
								<li class="break"></li> 
								<li><a href="#">Second item</a></li> 
								<li class="break"></li> 
								<li><a href="#">Third item</a></li> 
							</ul> 
						</li> 
					</ul> 
				</li> 
				<li class="break"></li> 
				<li><a href="form.jsp">Forms</a></li> 
				<li class="break"></li> 
				<li><a href="#">Articles</a></li> 
				<li class="break"></li> 
				<li><a href="#">News</a></li> 
				<li class="break"></li> 
				<li><a href="#">Comments</a></li> 
				<li class="break"></li>				
				<li><a href="#">About Us</a></li> 
				<li class="break"></li> 
			</ul> 
			<div class="search"> 
				<form action="#" method="post"> 
					<input type="text" value="" /> 
					<button type="submit"><span>Search</span></button> 
				</form> 
			</div> 
		</div> 
		<!--[if !IE]> END MENU <![endif]-->  
		
		<!--[if !IE]> START HOLDER <![endif]--> 
		<div class="holder">		
			<!--[if !IE]> START FORMS <![endif]--> 
			<div class="box"> 
				<div class="title"> 
					<h2>Forms</h2> 
					<img src="gfx/title-hide.gif" class="toggle" alt="" /> 
				</div> 
				<div class="content forms"> 
				
					<div class="message red"> 
						An error message if something is going wrong.
						<img src="gfx/icon-close.gif" alt="Close this item" /> 
					</div> 
				
					<form action="#" method="post"> 
						<div class="row"> 
							<label>A small size input:</label> 
							<input type="text" value="" class="small" /> 
						</div> 
						
						<div class="row"> 
							<label>A full size input:</label> 
							<input type="text" value="" /> 
						</div> 
						
						<div class="row"> 
							<label>A selectbox:</label> 
							<select> 
								<option value="opt1">Option 1</option> 
								<option value="opt2">Option 2</option> 
								<option value="opt3">Option 3</option> 
								<option value="opt4">Option 4</option> 
								<option value="opt5">Option 5</option> 
							</select> 
						</div> 
						
						<div class="row"> 
							<label>File upload:</label> 
							<input class="file_1" type="file" /> 
						</div> 
						
						<div class="row"> 
							<label>Date:</label> 
							<span class="date">Starting date</span> <input type="text" class="datepicker" /> 
							<span class="date">Ending date</span> <input type="text" class="datepicker" /> 
						</div> 
					
						<div class="row"> 
							<label>A checkbox</label> 
							<input type="checkbox" class="checkbox" checked="checked" name="ckbox" /> <span>Checkbox on</span> 
							<input type="checkbox" class="checkbox" name="ckbox" /> <span>Checkbox off</span> 
						</div> 					
						
						<div class="row-wysiwyg"> 
							<label>A WYSIWYG editor:</label> 
							<textarea id="wysiwyg" cols="" rows=""></textarea> 
						</div> 
						
						<div class="row buttons"> 
							<button type="submit"><span>Button</span></button> 							
						</div> 
					</form> 
					
				</div> 
			</div> 
			<!--[if !IE]> END FORMS <![endif]-->  
		
		</div> 
		
		<!--[if !IE]> START FOOTER <![endif]--> 
		<div class="footer"> 
			<div class="split">&#169; Copyright <a href="http://www.icddrb.org">icddrb</a></div> 
			<div class="split right">Powered by <a href="http://www.icddrb.org">icddrb</a></div> 
		</div> 
		<!--[if !IE]> END FOOTER <![endif]--> 
		
	</div> 
</div> 
<script type="text/javascript" src="js/date.js"></script> 
<script type="text/javascript" src="js/hoverIntent.js"></script> 
<script type="text/javascript" src="js/jquery.datepicker.js"></script> 
<script type="text/javascript" src="js/jquery.filestyle.mini.js"></script> 
<script type="text/javascript" src="js/jquery.filestyle.mini.js"></script> 
<script type="text/javascript" src="js/jquery.flot.js"></script> 
<script type="text/javascript" src="js/jquery.graphtable-0.2.js"></script> 
<script type="text/javascript" src="js/jquery.pngFix.js"></script> 
<script type="text/javascript" src="js/jquery.sparkbox-select.js"></script> 
<script type="text/javascript" src="js/jquery.wysiwyg.js"></script> 
<script type="text/javascript" src="js/jquery-ui.js"></script> 
<script type="text/javascript" src="js/superfish.js"></script> 
<script type="text/javascript" src="js/supersubs.js"></script> 
<script type="text/javascript" src="js/plugins/wysiwyg.rmFormat.js"></script> 
<script type="text/javascript" src="js/controls/wysiwyg.link.js"></script> 
<script type="text/javascript" src="js/controls/wysiwyg.table.js"></script> 
<script type="text/javascript" src="js/controls/wysiwyg.image.js"></script> 
<script type="text/javascript" src="js/inline.js"></script> 
 
</body>
</html> 