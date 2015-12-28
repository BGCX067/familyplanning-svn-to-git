<%@ include file="common/Taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>

	<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
	<title>MIS Form 2</title>

    <link href="css/style.css" rel="stylesheet" type="text/css">
    <link href="css/MISForm.css" rel="stylesheet" type="text/css">
    <link href="css/style_text.css" rel="stylesheet" type="text/css">
    <link href="css/c-grey.css" rel="stylesheet" type="text/css">
    <link href="css/menu.css" rel="stylesheet" type="text/css">
    <link href="css/tabs.css" rel="stylesheet" type="text/css">
    <link href="css/table.css" rel="stylesheet" type="text/css">


    <script type="text/javascript" src="js/jquery-1.5.2.min.js"></script>
	<script type="text/javascript" src="js/common.js"></script>

	<!--[if lte IE 8]>
		<script type="text/javascript" src="js/excanvas.min.js"></script>
	<![endif]-->
	
</head>

<body>

<div class="wrapper">
	<div class="container">

		<!--[if !IE]> START TOP <![endif]-->
		<%@ include file="layout/header.jsp"%>
		<!--[if !IE]> END TOP <![endif]-->

		<!--[if !IE]> START MENU <![endif]-->
		<%@ include file="layout/menu.jsp"%>
		<!--[if !IE]> END MENU <![endif]-->

		<!--[if !IE]> START HOLDER <![endif]-->
		<div class="holder">
			<!--[if !IE]> START TEXT BOX <![endif]-->
			<div class="box">
				<div class="title">
					<h2>MIS Form 2 </h2>
					
				</div>

                <div class="content tabs">
                  
					
					<ul class="tabnav">
						<li><a href="#tab1">Monthly Performance Report </a></li>
                    </ul>

					
					
					
					<div id="tab1" class="tabdiv">
						<form action="#" method="post">
						<table class="tableForm">
							  
                              <tr>
                                <td rowspan="2" align="left"><div class="rotate-text-form2">Unit Number</div></td>
                                <td colspan="2" align="center"><strong>Others</strong></td>
                                <td colspan="3" align="center"><strong>Supervision</strong></td>
                                <td colspan="4" align="center"><strong>#  Meeting held</strong></td>
                              </tr>
                              <tr>
                                <td height="250"><div class="rotate-text-form2"># of couple motivated for NSV</div></td>
                                <td align="center"><div class="rotate-text-form2"># of newlywed couple</div></td>
                                <td align="center"><div class="rotate-text-form2"># of days data verification conducted</div></td>
                                <td align="center"><div class="rotate-text-form2"># of couple verified</div></td>
                                <td align="center"><div class="rotate-text-form2"># of times FWA register verified</div></td>
                                <td align="center"><div class="rotate-text-form2"># of group meeting held</div></td>
                                <td align="center"><div class="rotate-text-form2"># of fortnightly meeting held</div></td>
                                <td align="center"><div class="rotate-text-form2">Union family planning meeting</div></td>
                                <td align="center"><div class="rotate-text-form2">Other meetings held</div></td>
                              </tr>
                              
                              <tr>
                                <td align="center">1</td>
                                <td align="center">2</td>
                                <td align="center">3</td>
                                <td align="center">4</td>
                                <td align="center">5</td>
                                <td align="center">6</td>
                                <td align="center">7</td>
                                <td align="center">8</td>
                                <td align="center">9</td>
                                <td align="center">10</td>
                              </tr>
                              
                              <tr>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="smallest" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                         <input id="others_nsv1" name="others_nsv1" type="text" value="" class="smallest" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input id="others_newwed1" name="others_newwed1" type="text" value="" class="smallest" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                         <input id="supervision_daysverify1" name="supervision_daysverify1" type="text" value="" class="smallest" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input id="supervision_coupleverify1" name="supervision_coupleverify1" type="text" value="" class="smallest" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input id="supervision_fwa1" name="supervision_fwa1" type="text" value="" class="smallest" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                         <input id="meeting_group1" name="meeting_group1" type="text" value="" class="smallest" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input id="meeting_fort1" name="meeting_fort1" type="text" value="" class="smallest" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input id="meeting_union1" name="meeting_union1" type="text" value="" class="smallest" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input id="meeting_other1" name="meeting_other1" type="text" value="" class="smallest" />
                                    </div>								</td>
                              </tr>
                              <tr>
                                <td>
									<div class="row">
										<input type="text" value="" class="smallest" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input id="others_nsv2" name="others_nsv2" type="text" value="" class="smallest" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input id="others_newwed2" name="others_newwed2" type="text" value="" class="smallest" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input id="supervision_daysverify2" name="supervision_daysverify2" type="text" value="" class="smallest" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input id="supervision_coupleverify2" name="supervision_coupleverify2" type="text" value="" class="smallest" />
                                    </div>								</td>
                                <td>
									<div class="row">
                                        <input id="supervision_fwa2" name="supervision_fwa2" type="text" value="" class="smallest" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input id="meeting_group2" name="meeting_group2" type="text" value="" class="smallest" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input id="meeting_fort2" name="meeting_fort2" type="text" value="" class="smallest" />
                                    </div>								</td>
                                <td>
									<div class="row">
                                        <input id="meeting_union2" name="meeting_union2" type="text" value="" class="smallest" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input id="meeting_other2" name="meeting_other2" type="text" value="" class="smallest" />
                                    </div>								</td>
                              </tr>
                              <tr>
                                <td>
									<div class="row">
										<input type="text" value="" class="smallest" />                                        
                                    </div>								</td>
                                <td>
                                    <div class="row">
										<input id="others_nsv3" name="others_nsv3" type="text" value="" class="smallest" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input id="others_newwed3" name="others_newwed3" type="text" value="" class="smallest" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input id="supervision_daysverify3" name="supervision_daysverify3" type="text" value="" class="smallest" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input id="supervision_coupleverify3" name="supervision_coupleverify3" type="text" value="" class="smallest" />
                                    </div>								</td>
								<td>
									<div class="row">
                                        <input id="supervision_fwa3" name="supervision_fwa3" type="text" value="" class="smallest" />
                                    </div>								</td>	
                                <td>
									<div class="row">
                                        <input id="meeting_group3" name="meeting_group3" type="text" value="" class="smallest" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input id="meeting_fort3" name="meeting_fort3" type="text" value="" class="smallest" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input id="meeting_union3" name="meeting_union3" type="text" value="" class="smallest" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input id="meeting_other3" name="meeting_other3" type="text" value="" class="smallest" />
                                    </div>								</td>
                              </tr>
                              
                              <tr>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="smallest" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input id="others_nsv4" name="others_nsv4" type="text" value="" class="smallest" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input id="others_newwed4" name="others_newwed4" type="text" value="" class="smallest" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input id="supervision_daysverify4" name="supervision_daysverify4" type="text" value="" class="smallest" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input id="supervision_coupleverify4" name="supervision_coupleverify4" type="text" value="" class="smallest" />
                                    </div>								</td>
                                <td>
									<div class="row">
                                        <input id="supervision_fwa4" name="supervision_fwa4" type="text" value="" class="smallest" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input id="meeting_group4" name="meeting_group4" type="text" value="" class="smallest" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input id="meeting_fort4" name="meeting_fort4" type="text" value="" class="smallest" />
                                    </div>								</td>
                                <td>
									<div class="row">
                                        <input id="meeting_union4" name="meeting_union4" type="text" value="" class="smallest" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input id="meeting_other4" name="meeting_other4" type="text" value="" class="smallest" />
                                    </div>								</td>
                              </tr>
                              <tr>
                                <td>G Total</td>
                                <td>
                                    <div class="row">
                                        <input id="others_nsv_total" name="others_nsv_total" type="text" value="" class="smallest" onfocus="calculateTotalForm02('others_nsv1', 'others_nsv2', 'others_nsv3', 'others_nsv4', 'others_nsv_total');" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input id="others_newwed_total" name="others_newwed_total" type="text" value="" class="smallest" onfocus="calculateTotalForm02('others_newwed1', 'others_newwed2', 'others_newwed3', 'others_newwed4', 'others_newwed_total');" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input id="supervision_daysverify_total" name="supervision_daysverify_total" type="text" value="" class="smallest" onfocus="calculateTotalForm02('supervision_daysverify1', 'supervision_daysverify2', 'supervision_daysverify3', 'supervision_daysverify4', 'supervision_daysverify_total');" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
  										<input id="supervision_coupleverify_total" name="supervision_coupleverify_total" type="text" value="" class="smallest" onfocus="calculateTotalForm02('supervision_coupleverify1', 'supervision_coupleverify2', 'supervision_coupleverify3', 'supervision_coupleverify4', 'supervision_coupleverify_total');" />
                                    </div>								</td>
                                <td>
									<div class="row">
										<input id="supervision_fwa_total" name="supervision_fwa_total" type="text" value="" class="smallest" onfocus="calculateTotalForm02('supervision_fwa1', 'supervision_fwa2', 'supervision_fwa3', 'supervision_fwa4', 'supervision_fwa_total');" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input id="meeting_group_total" name="meeting_group_total" type="text" value="" class="smallest" onfocus="calculateTotalForm02('meeting_group1', 'meeting_group2', 'meeting_group3', 'meeting_group4', 'meeting_group_total');" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input id="meeting_fort_total" name="meeting_fort_total" type="text" value="" class="smallest" onfocus="calculateTotalForm02('meeting_fort1', 'meeting_fort2', 'meeting_fort3', 'meeting_fort4', 'meeting_fort_total');" />
                                    </div>								</td>
                                <td>
									<div class="row">
                                        <input id="meeting_union_total" name="meeting_union_total" type="text" value="" class="smallest" onfocus="calculateTotalForm02('meeting_union1', 'meeting_union2', 'meeting_union3', 'meeting_union4', 'meeting_union_total');" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input id="meeting_other_total" name="meeting_other_total" type="text" value="" class="smallest" onfocus="calculateTotalForm02('meeting_other1', 'meeting_other2', 'meeting_other3', 'meeting_other4', 'meeting_other_total');" />
                                    </div>								</td>
                              </tr>
                              
                              

                              <tr>
                                <td colspan="10">
                                    <div class="row buttons">
                                        <button type="submit"><span>Save</span></button>
                                        <button type="submit"><span>Save & Next</span></button>
                                    </div>                                </td>
                            </tr>
                        </table>
						</form>
					</div>
					
					
			  </div>
			</div>
			<!--[if !IE]> END TEXT BOX <![endif]-->

		</div>

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