<%@ include file="common/Taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>

	<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
	<title>MIS Form 3</title>

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

   <script type="text/javascript">

        function setUpazilaByDistrict(districID)
        {
          var i = 0;
          var j = 0;
          var k = 0;

          var len = document.forms[0].elements.length;

          for(m = 0; m < len; m++)
          {
            if( document.forms[0].elements[m].name == 'misForm.upazilaID' )
            {
              k++;
              i = m;  // Set element index
            }

            if(k == 2)
              break;
          }
          // clear the option
          document.forms[0].elements[i].options.length = 0;
          // clear the note
        //  document.forms[0].elements[j].value = '';
          // create new option
          document.forms[0].elements[i].options[0] = new Option('Please select','');
          // selected option
          document.forms[0].elements[i].options[0].selected=true;
          //alert("roadMasterID:"+ roadMasterID)
          if(districID == 0)
            return;

          var xmlHttp;
          //get the (form based) params to push up as part of the get request
          url="/fpb/MISForm.trans?reqCode=getUpazilaByDistrict&districtID="+districID;
          //alert(url);
          try
          {
            // Firefox, Opera 8.0+, Safari
            xmlHttp=new XMLHttpRequest();
          }
          catch (e)
          {
            // Internet Explorer
            try
            {
              xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
            }
            catch (e)
            {
              try
              {
                xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
              }
              catch (e)
              {
                alert("Your browser does not support AJAX!");
                return false;
              }
            }
          }
          xmlHttp.onreadystatechange=function()
          {
            if(xmlHttp.readyState==4)
            {
              //returnElement = xmlHttp.responseText;
              var upazilaList = eval('(' + xmlHttp.responseText + ')');
              for(n = 0; n < upazilaList.length; n++){
                //alert("Test Code and Name: " + units[n].unitCodeAndName);
                document.forms[0].elements[i].options[n+1] = new Option(upazilaList[n].name, upazilaList[n].ID);
              }

            }
          };
          xmlHttp.open("GET",url,true);
          xmlHttp.send(null);
        }

function setUnionParishodByUpazila(upazilaID)
        {
          var i = 0;
          var j = 0;
          var k = 0;

          var len = document.forms[0].elements.length;

          for(m = 0; m < len; m++)
          {
            if( document.forms[0].elements[m].name == 'misForm.unionParishodID' )
            {
              k++;
              i = m;  // Set element index
            }

            if(k == 2)
              break;
          }
          // clear the option
          document.forms[0].elements[i].options.length = 0;
          // clear the note
        //  document.forms[0].elements[j].value = '';
          // create new option
          document.forms[0].elements[i].options[0] = new Option('Please select','');
          // selected option
          document.forms[0].elements[i].options[0].selected=true;
          //alert("roadMasterID:"+ roadMasterID)
          if(upazilaID == 0)
            return;

          var xmlHttp;
          //get the (form based) params to push up as part of the get request
          url="/fpb/MISForm.trans?reqCode=getUnionParishodByUpazila&upazilaID="+upazilaID;
          //alert(url);
          try
          {
            // Firefox, Opera 8.0+, Safari
            xmlHttp=new XMLHttpRequest();
          }
          catch (e)
          {
            // Internet Explorer
            try
            {
              xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
            }
            catch (e)
            {
              try
              {
                xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
              }
              catch (e)
              {
                alert("Your browser does not support AJAX!");
                return false;
              }
            }
          }
          xmlHttp.onreadystatechange=function()
          {
            if(xmlHttp.readyState==4)
            {
              //returnElement = xmlHttp.responseText;
              var upList = eval('(' + xmlHttp.responseText + ')');
              for(n = 0; n < upList.length; n++){
                //alert("Test Code and Name: " + units[n].unitCodeAndName);
                document.forms[0].elements[i].options[n+1] = new Option(upList[n].name, upList[n].ID);
              }

            }
          };
          xmlHttp.open("GET",url,true);
          xmlHttp.send(null);
        }

    </script>
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
					<h2>MIS Form 3</h2>					
				</div>

                <div class="content tabs">
                <html:form action="/MISForm?reqCode=promtMISFormThree" method="post">
                  <div class="masterinfo">
                        <table>
                            <tr>
								<td>Name of Centre:</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="small" />
                                    </div>
								</td>
                                <td>District:</td>
                                <td>
                                    <div class="row">
                                        <html:select property="misForm.districtID" name="misFormForm" styleId="districtID" onchange="javascript:setUpazilaByDistrict(this.value);">
                                            <html:option value="">Please select</html:option>
                                            <html:options collection="districtList" property="ID" labelProperty="name" />
                                        </html:select>
                                    </div>
                                </td>

                                <td>Upozila/Thana:</td>
                                <td>
                                    <div class="row">
                                        <html:select property="misForm.upazilaID" name="misFormForm" styleId="upazilaID" onchange="javascript:setUnionParishodByUpazila(this.value);">
                                            <html:option value="">Please select</html:option>
                                            <html:options collection="upazilaList" property="ID" labelProperty="name" />
                                        </html:select>
                                    </div>
                                </td>

                                <td>Union:</td>
                                <td>
                                    <div class="row">
                                        <html:select property="misForm.unionParishodID" name="misFormForm" styleId="unionParishodID">
                                            <html:option value="">Please select</html:option>
                                            <html:options collection="upList" property="ID" labelProperty="name" />
                                        </html:select>
                                    </div>
                                </td>
                            </tr>
                        </table>
                  </div>

					<ul class="tabnav">
						<li><a href="#tab1">Family Planning</a></li>
						<li><a href="#tab2">Reproductive health services</a></li>
						<li><a href="#tab3">Child (0-5 yrs) Service</a></li>
						<li><a href="#tab4">Others</a></li>
						<li><a href="#tab5">Monthly stock and distribution (Nutrition)</a></li>
						<li><a href="#tab6">MYCNSIA Service Information</a></li>
						<li><a href="#tab7">Nutrition Commodity Information</a></li>
                    </ul>

					<div id="tab1" class="tabdiv">
                        <!--<form name="family_planning" id="family_planning" action="#" method="post">-->
                        <table class="tableForm">

                              <tr>
                                <td width="40%" align="center" colspan="6">Type of Service </td>
                                <td width="10%" align="center">Clinic</td>
                                <td width="30%" align="center">Satellite  Clinic/Home</td>
                                <td width="10%" align="center">Total</td>
                                <td width="10%" align="center">Comments</td>
                              </tr>
                              <tr>
                                <td width="60%" rowspan="19" align="center"><div class="rotate-text"><strong>Family Planning</strong></div> </td>
                                <td width="60" colspan="2" rowspan="3">Oral Pill </td>
                                <td width="120%" colspan="3">Old</td>
                                <td width="10%">
									<div class="row">
                                        <input id="oralpill_old_clinic" name="oralpill_old_clinic" type="text" value="" class="verysmall" />
                                    </div>								</td>
                                <td width="10%">
									<div class="row">
                                        <input id="oralpill_old_home" name="oralpill_old_home" type="text" value="" class="verysmall"/>
                                    </div>								</td>
                                <td width="10%">
									<div class="row">
                                        <input id="oralpill_old_total" name="oralpill_old_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('oralpill_old_clinic','oralpill_old_home','oralpill_old_total','add');"/>
                                    </div>								</td>
                                <td width="10%">
									<div class="row">
                                        <input id="oralpill_old_comments" type="text" value="" class="medium" />
                                    </div>								</td>
                              </tr>
                              <tr>
                                <td colspan="3">New</td>
                                <td>
									<div class="row">
                                        <input id="oralpill_new_clinic" name="oralpill_new_clinic" type="text" value="" class="verysmall" />
                                    </div>								</td>
                                <td>
									<div class="row">
                                        <input id="oralpill_new_home" name="oralpill_new_home" type="text" value="" class="verysmall"   />
                                    </div>								</td>
                                <td>
									<div class="row">
                                        <input id="oralpill_new_total" name="oralpill_new_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('oralpill_new_clinic','oralpill_new_home','oralpill_new_total','add');"/>
                                    </div>								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>								</td>
                              </tr>
                              <tr>
                                <td colspan="3">Total</td>
                                <td>
									<div class="row">
                                        <input id="oralpill_total_clinic" name="oralpill_total_clinic" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('oralpill_old_clinic','oralpill_new_clinic','oralpill_total_clinic','add');"/>
                                    </div>								</td>
                                <td>
									<div class="row">
                                        <input id="oralpill_total_home" name="oralpill_total_home" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('oralpill_old_home','oralpill_new_home','oralpill_total_home','add');"/>
                                    </div>								</td>
                                <td>
									<div class="row">
                                        <input id="oralpill_total_total" name="oralpill_total_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('oralpill_total_clinic','oralpill_total_home','oralpill_total_total','add');"/>
                                    </div>								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>								</td>
                              </tr>
                              <tr>
                                <td width="60" colspan="2" rowspan="3">Condom </td>
                                <td width="120%" colspan="3">Old</td>
                                <td width="10%">
									<div class="row">
                                        <input id="condom_old_clinic" name="condom_old_clinic" type="text" value="" class="verysmall" />
                                    </div>								</td>
                                <td width="10%">
									<div class="row">
                                        <input id="condom_old_home" name="condom_old_home" type="text" value="" class="verysmall"/>
                                    </div>								</td>
                                <td width="10%">
									<div class="row">
                                        <input id="condom_old_total" name="condom_old_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('condom_old_clinic','condom_old_home','condom_old_total','add');"/>
                                    </div>								</td>
                                <td width="10%">
									<div class="row">
                                        <input id="condom_old_comments" type="text" value="" class="medium" />
                                    </div>								</td>
                              </tr>
                              <tr>
                                <td colspan="3">New</td>
                                <td>
									<div class="row">
                                        <input id="condom_new_clinic" name="condom_new_clinic" type="text" value="" class="verysmall" />
                                    </div>								</td>
                                <td>
									<div class="row">
                                        <input id="condom_new_home" name="condom_new_home" type="text" value="" class="verysmall"   />
                                    </div>								</td>
                                <td>
									<div class="row">
                                        <input id="condom_new_total" name="condom_new_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('condom_new_clinic','condom_new_home','condom_new_total','add');"/>
                                    </div>								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>								</td>
                              </tr>
                              <tr>
                                <td colspan="3">Total</td>
                                <td>
									<div class="row">
                                        <input id="condom_total_clinic" name="condom_total_clinic" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('condom_old_clinic','condom_new_clinic','condom_total_clinic','add');"/>
                                    </div>								</td>
                                <td>
									<div class="row">
                                        <input id="condom_total_home" name="condom_total_home" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('condom_old_home','condom_new_home','condom_total_home','add');"/>
                                    </div>								</td>
                                <td>
									<div class="row">
                                        <input id="condom_total_total" name="condom_total_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('condom_total_clinic','condom_total_home','condom_total_total','add');"/>
                                    </div>								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>								</td>
                              </tr>
                              <tr>
                                <td colspan="2" rowspan="3">Injectable</td>
                                <td width="120%" colspan="3">New</td>
                                <td width="10%">
									<div class="row">
                                        <input id="inject_old_clinic" name="inject_old_clinic" type="text" value="" class="verysmall" />
                                    </div>								</td>
                                <td width="10%">
									<div class="row">
                                        <input id="inject_old_home" name="inject_old_home" type="text" value="" class="verysmall"/>
                                    </div>								</td>
                                <td width="10%">
									<div class="row">
                                        <input id="inject_old_total" name="inject_old_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('inject_old_clinic','inject_old_home','inject_old_total','add');"/>
                                    </div>								</td>
                                <td width="10%">
									<div class="row">
                                        <input id="inject_old_comments" type="text" value="" class="medium" />
                                    </div>								</td>
                              </tr>
                              <tr>
                                <td colspan="3">Subsecuent Dose </td>
                                <td>
									<div class="row">
                                        <input id="inject_new_clinic" name="inject_new_clinic" type="text" value="" class="verysmall" />
                                    </div>								</td>
                                <td>
									<div class="row">
                                        <input id="inject_new_home" name="inject_new_home" type="text" value="" class="verysmall"   />
                                    </div>								</td>
                                <td>
									<div class="row">
                                        <input id="inject_new_total" name="inject_new_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('inject_new_clinic','inject_new_home','inject_new_total','add');"/>
                                    </div>								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>								</td>
                              </tr>
                              <tr>
                                <td colspan="3">Total</td>
                                <td>
									<div class="row">
                                        <input id="inject_total_clinic" name="inject_total_clinic" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('inject_old_clinic','inject_new_clinic','inject_total_clinic','add');"/>
                                    </div>								</td>
                                <td>
									<div class="row">
                                        <input id="inject_total_home" name="inject_total_home" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('inject_old_home','inject_new_home','inject_total_home','add');"/>
                                    </div>								</td>
                                <td>
									<div class="row">
                                        <input id="inject_total_total" name="inject_total_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('inject_total_clinic','inject_total_home','inject_total_total','add');"/>
                                    </div>								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>								</td>
                              </tr>
                              <tr>
                                <td colspan="2" rowspan="3">IUD</td>
                                <td width="120%" colspan="3">New</td>
                                <td width="10%">
									<div class="row">
                                        <input id="iud_new_clinic" name="iud_new_clinic" type="text" value="" class="verysmall" />
                                    </div>								</td>
                                <td width="10%">
									<div class="row">
                                        <input id="iud_new_home" name="iud_new_home" type="text" value="" class="verysmall"/>
                                    </div>								</td>
                                <td width="10%">
									<div class="row">
                                        <input id="iud_new_total" name="iud_new_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('iud_new_clinic','iud_new_home','iud_new_total','add');"/>
                                    </div>								</td>
                                <td width="10%">
									<div class="row">
                                        <input id="iud_new_comments" type="text" value="" class="medium" />
                                    </div>								</td>
                              </tr>
                              <tr>
                                <td width="120%" colspan="3">Removal</td>
                                <td width="10%">
									<div class="row">
                                        <input id="iud_removal_clinic" name="iud_removal_clinic" type="text" value="" class="verysmall" />
                                    </div>
								</td>
                                <td width="10%">
									<div class="row">
                                        <input id="iud_removal_home" name="iud_removal_home" type="text" value="" class="verysmall"/>
                                    </div>
								</td>
                                <td width="10%">
									<div class="row">
                                        <input id="iud_removal_total" name="iud_removal_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('iud_removal_clinic','iud_removal_home','iud_removal_total','add');"/>
                                    </div>
								</td>
                                <td width="10%">
									<div class="row">
                                        <input id="iud_removal_comments" type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                              <tr>
                                <td width="120%" colspan="3">Follow Up</td>
                                <td width="10%">
									<div class="row">
                                        <input id="iud_follow_clinic" name="iud_follow_clinic" type="text" value="" class="verysmall" />
                                    </div>
								</td>
                                <td width="10%">
									<div class="row">
                                        <input id="iud_follow_home" name="iud_follow_home" type="text" value="" class="verysmall"/>
                                    </div>
								</td>
                                <td width="10%">
									<div class="row">
                                        <input id="iud_follow_total" name="iud_follow_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('iud_follow_clinic','iud_follow_home','iud_follow_total','add');"/>
                                    </div>
								</td>
                                <td width="10%">
									<div class="row">
                                        <input id="iud_follow_comments" type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                              <tr>
                                <td colspan="2" rowspan="3">Implant</td>
                                <td width="120%" colspan="3">New</td>
                                <td width="10%">
									<div class="row">
                                        <input id="implant_new_clinic" name="implant_new_clinic" type="text" value="" class="verysmall" />
                                    </div>								</td>
                                <td width="10%">
									<div class="row">
                                        <input id="implant_new_home" name="implant_new_home" type="text" value="" class="verysmall"/>
                                    </div>								</td>
                                <td width="10%">
									<div class="row">
                                        <input id="implant_new_total" name="implant_new_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('implant_new_clinic','implant_new_home','implant_new_total','add');"/>
                                    </div>								</td>
                                <td width="10%">
									<div class="row">
                                        <input id="implant_new_comments" type="text" value="" class="medium" />
                                    </div>								</td>
                              </tr>
                              <tr>
                                <td width="120%" colspan="3">Removal</td>
                                <td width="10%">
									<div class="row">
                                        <input id="implant_removal_clinic" name="implant_removal_clinic" type="text" value="" class="verysmall" />
                                    </div>
								</td>
                                <td width="10%">
									<div class="row">
                                        <input id="implant_removal_home" name="implant_removal_home" type="text" value="" class="verysmall"/>
                                    </div>
								</td>
                                <td width="10%">
									<div class="row">
                                        <input id="implant_removal_total" name="implant_removal_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('implant_removal_clinic','implant_removal_home','implant_removal_total','add');"/>
                                    </div>
								</td>
                                <td width="10%">
									<div class="row">
                                        <input id="implant_removal_comments" type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                              <tr>
                                <td width="120%" colspan="3">Follow Up</td>
                                <td width="10%">
									<div class="row">
                                        <input id="implant_follow_clinic" name="implant_follow_clinic" type="text" value="" class="verysmall" />
                                    </div>
								</td>
                                <td width="10%">
									<div class="row">
                                        <input id="implant_follow_home" name="implant_follow_home" type="text" value="" class="verysmall"/>
                                    </div>
								</td>
                                <td width="10%">
									<div class="row">
                                        <input id="implant_follow_total" name="implant_follow_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('implant_follow_clinic','implant_follow_home','implant_follow_total','add');"/>
                                    </div>
								</td>
                                <td width="10%">
									<div class="row">
                                        <input id="implant_follow_comments" type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                              <tr>
                                <td colspan="2" rowspan="4">Permanent Method </td>
                                <td width="60" rowspan="2">Male</td>
                                <td colspan="2">Performed</td>
                                <td>
									<div class="row">
                                        <input id="male_perform_clinic" name="male_perform_clinic" type="text" value="" class="verysmall" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="male_perform_home" name="male_perform_home" type="text" value="" class="verysmall"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="male_perform_total" name="male_perform_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('male_perform_clinic','male_perform_home','male_perform_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                              <tr>
                                <td colspan="2">Follow up </td>
                                <td>
									<div class="row">
                                        <input id="male_follow_clinic" name="male_follow_clinic" type="text" value="" class="verysmall" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="male_follow_home" name="male_follow_home" type="text" value="" class="verysmall"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="male_follow_total" name="male_follow_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('male_follow_clinic','male_follow_home','male_follow_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                              <tr>
                                <td rowspan="2">Female</td>
                                <td colspan="2">Performed</td>
                                <td>
									<div class="row">
                                        <input id="female_perform_clinic" name="female_perform_clinic" type="text" value="" class="verysmall" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="female_perform_home" name="female_perform_home" type="text" value="" class="verysmall"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="female_perform_total" name="female_perform_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('female_perform_clinic','female_perform_home','female_perform_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                              <tr>
                                <td colspan="2">Follow up </td>
                                <td>
									<div class="row">
                                        <input id="female_follow_clinic" name="female_follow_clinic" type="text" value="" class="verysmall" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="female_follow_home" name="female_follow_home" type="text" value="" class="verysmall"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="female_follow_total" name="female_follow_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('female_follow_clinic','female_follow_home','female_follow_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                        </table>
						<br />
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							  <tr>
								<td>&nbsp;</td>
							  </tr>
							  <tr>
                                <td colspan="10">
                                    <div class="row buttons">
                                        <button type="submit"><span>Save</span></button>
                                        <button type="submit"><span>Save & Next</span></button>
                                    </div>
                                </td>
                            </tr>
                    </table>

                        <!--</form>-->
                    </div>


					<div id="tab2" class="tabdiv">
                        <!--<form action="#" method="post">-->
                        <table class="tableForm">

                              <tr>
                                <td width="60%" align="center" colspan="6">Type of Service </td>
                                <td width="10%" align="center">Clinic</td>
                                <td width="10%" align="center">Satellite  Clinic/Home</td>
                                <td width="10%" align="center">Total</td>
                                <td width="10%" align="center">Comments</td>
                              </tr>
                              <tr>
                                <td width="60%" rowspan="31" align="center"><div class="rotate-text"><strong>Reproductive health services</strong></div></td>
                                <td width="60%" rowspan="9" align="center"><div class="rotate-text"><strong>Pregnant mother care</strong></div> </td>
                                <td colspan="4">ANC 1 </td>
                                <td>
									<div class="row">
                                        <input id="pmc_anc1_clinic" name="pmc_anc1_clinic" type="text" value="" class="verysmall" />
                                    </div>								</td>
                                <td>
									<div class="row">
                                        <input id="pmc_anc1_home" name="pmc_anc1_home" type="text" value="" class="verysmall" />
                                    </div>								</td>
                                <td>
									<div class="row">
                                        <input id="pmc_anc1_total" name="pmc_anc1_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('pmc_anc1_clinic','pmc_anc1_home','pmc_anc1_total','add');"/>
                                    </div>								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>								</td>
                              </tr>
                              <tr>
                                <td colspan="4">ANC 2 </td>
                                <td>
									<div class="row">
                                        <input name="pmc_anc2_clinic" type="text" class="verysmall" id="pmc_anc2_clinic" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input name="pmc_anc2_home" type="text" class="verysmall" id="pmc_anc2_home" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="pmc_anc2_total" name="pmc_anc2_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('pmc_anc2_clinic','pmc_anc2_home','pmc_anc2_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                              <tr>
                                <td colspan="4">ANC 3 or more </td>
                                <td>
									<div class="row">
                                        <input name="pmc_anc3_clinic" type="text" class="verysmall" id="pmc_anc3_clinic" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input name="pmc_anc3_home" type="text" class="verysmall" id="pmc_anc3_home" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="pmc_anc3_total" name="pmc_anc3_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('pmc_anc3_clinic','pmc_anc3_home','pmc_anc3_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                              <tr>
                                <td colspan="4"># of risk/complicated pregnant woman referred </td>
                                <td>
									<div class="row">
                                        <input name="pmc_risk_clinic" type="text" class="verysmall" id="pmc_risk_clinic" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input name="pmc_risk_home" type="text" class="verysmall" id="pmc_risk_home" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="pmc_risk_total" name="pmc_risk_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('pmc_risk_clinic','pmc_risk_home','pmc_risk_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                              <tr>
                                <td colspan="3" rowspan="5">Woman TT </td>
                                <td width="60%">1st dose </td>
                                <td>
									<div class="row">
                                        <input name="pmc_tt1_clinic" type="text" class="verysmall" id="pmc_tt1_clinic" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input name="pmc_tt1_home" type="text" class="verysmall" id="pmc_tt1_home" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="pmc_tt1_total" name="pmc_tt1_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('pmc_tt1_clinic','pmc_tt1_home','pmc_tt1_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                              <tr>
                                <td>2nd dose </td>
                                <td>
									<div class="row">
                                        <input name="pmc_tt2_clinic" type="text" class="verysmall" id="pmc_tt2_clinic" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input name="pmc_tt2_home" type="text" class="verysmall" id="pmc_tt2_home" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="pmc_tt2_total" name="pmc_tt2_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('pmc_tt2_clinic','pmc_tt2_home','pmc_tt2_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                              <tr>
                                <td>3rd dose </td>
                                <td>
									<div class="row">
                                        <input name="pmc_tt3_clinic" type="text" class="verysmall" id="pmc_tt3_clinic" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input name="pmc_tt3_home" type="text" class="verysmall" id="pmc_tt3_home" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="pmc_tt3_total" name="pmc_tt3_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('pmc_tt3_clinic','pmc_tt3_home','pmc_tt3_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                              <tr>
                                <td>4th dose </td>
                                <td>
									<div class="row">
                                        <input name="pmc_tt4_clinic" type="text" class="verysmall" id="pmc_tt4_clinic" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input name="pmc_tt4_home" type="text" class="verysmall" id="pmc_tt4_home" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="pmc_tt4_total" name="pmc_tt4_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('pmc_tt4_clinic','pmc_tt4_home','pmc_tt4_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                              <tr>
                                <td>5th dose </td>
                                <td>
									<div class="row">
                                        <input name="pmc_tt5_clinic" type="text" class="verysmall" id="pmc_tt5_clinic" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input name="pmc_tt5_home" type="text" class="verysmall" id="pmc_tt5_home" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="pmc_tt5_total" name="pmc_tt5_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('pmc_tt5_clinic','pmc_tt5_home','pmc_tt5_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                              <tr>
                                <td colspan="4" rowspan="4">Delivery</td>
                                <td>Normal</td>
                                <td>
									<div class="row">
                                        <input name="rhs_delivery_normal_clinic" type="text" class="verysmall" id="rhs_delivery_normal_clinic" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input name="rhs_delivery_normal_home" type="text" class="verysmall" id="rhs_delivery_normal_home" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="rhs_delivery_normal_total" name="rhs_delivery_normal_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('rhs_delivery_normal_clinic','rhs_delivery_normal_home','rhs_delivery_normal_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                              <tr>
                                <td>Caesarean</td>
                                <td>
									<div class="row">
                                        <input name="rhs_delivery_caesarean_clinic" type="text" class="verysmall" id="rhs_delivery_caesarean_clinic" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input name="rhs_delivery_caesarean_home" type="text" class="verysmall" id="rhs_delivery_caesarean_home" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="rhs_delivery_caesarean_total" name="rhs_delivery_caesarean_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('rhs_delivery_caesarean_clinic','rhs_delivery_caesarean_home','rhs_delivery_caesarean_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                              <tr>
                                <td>Others</td>
                                <td>
									<div class="row">
                                        <input name="rhs_delivery_others_clinic" type="text" class="verysmall" id="rhs_delivery_others_clinic" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input name="rhs_delivery_others_home" type="text" class="verysmall" id="rhs_delivery_others_home" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="rhs_delivery_others_total" name="rhs_delivery_others_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('rhs_delivery_others_clinic','rhs_delivery_others_home','rhs_delivery_others_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                              <tr>
                                <td>Referred</td>
                                <td>
									<div class="row">
                                        <input name="rhs_delivery_referred_clinic" type="text" class="verysmall" id="rhs_delivery_referred_clinic" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input name="rhs_delivery_referred_home" type="text" class="verysmall" id="rhs_delivery_referred_home" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="rhs_delivery_referred_total" name="rhs_delivery_referred_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('rhs_delivery_referred_clinic','rhs_delivery_referred_home','rhs_delivery_referred_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                              <tr>
                                <td colspan="5"># of stil birth </td>
                                <td>
									<div class="row">
                                        <input name="pmc_still_birth_clinic" type="text" class="verysmall" id="pmc_still_birth_clinic" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input name="pmc_still_birth_home" type="text" class="verysmall" id="pmc_still_birth_home" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="pmc_still_birth_total" name="pmc_still_birth_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('pmc_still_birth_clinic','pmc_still_birth_home','pmc_still_birth_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                              <tr>
                                <td colspan="3">Post natal care </td>
                                <td colspan="2">1st visit </td>
                                <td>
									<div class="row">
                                        <input name="rhs_postnatal_1st_clinic" type="text" class="verysmall" id="rhs_postnatal_1st_clinic" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input name="rhs_postnatal_1st_home" type="text" class="verysmall" id="rhs_postnatal_1st_home" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="rhs_postnatal_1st_total" name="rhs_postnatal_1st_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('rhs_postnatal_1st_clinic','rhs_postnatal_1st_home','rhs_postnatal_1st_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                              <tr>
                                <td colspan="3">&nbsp;</td>
                                <td colspan="2">Follow up visit </td>
                                <td>
									<div class="row">
                                        <input name="rhs_postnatal_followup_clinic" type="text" class="verysmall" id="rhs_postnatal_followup_clinic" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input name="rhs_postnatal_followup_home" type="text" class="verysmall" id="rhs_postnatal_followup_home" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="rhs_postnatal_followup_total" name="rhs_postnatal_followup_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('rhs_postnatal_followup_clinic','rhs_postnatal_followup_home','rhs_postnatal_followup_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                              <tr>
                                <td colspan="3"># Barren couple </td>
                                <td colspan="2">Advice given </td>
                                <td>
									<div class="row">
                                        <input name="rhs_barren_active_clinic" type="text" class="verysmall" id="rhs_barren_active_clinic" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input name="rhs_barren_active_home" type="text" class="verysmall" id="rhs_barren_active_home" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="rhs_barren_active_total" name="rhs_barren_active_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('rhs_barren_active_clinic','rhs_barren_active_home','rhs_barren_active_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                              <tr>
                                <td colspan="3">&nbsp;</td>
                                <td colspan="2">Referred</td>
                                <td>
									<div class="row">
                                        <input name="rhs_barren_referred_clinic" type="text" class="verysmall" id="rhs_barren_referred_clinic" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input name="rhs_barren_referred_home" type="text" class="verysmall" id="rhs_barren_referred_home" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="rhs_barren_referred_total" name="rhs_barren_referred_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('rhs_barren_referred_clinic','rhs_barren_referred_home','rhs_barren_referred_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                              <tr>
                                <td rowspan="6" align="center"><div class="rotate-text">#adolescent</div></td>
                                <td colspan="4">Anaemia patient </td>
                                <td>
									<div class="row">
                                        <input name="rhs_adolescent_anaemia_patient_clinic" type="text" class="verysmall" id="rhs_adolescent_anaemia_patient_clinic" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input name="rhs_adolescent_anaemia_patient_home" type="text" class="verysmall" id="rhs_adolescent_anaemia_patient_home" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="rhs_adolescent_anaemia_patient_total" name="rhs_adolescent_anaemia_patient_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('rhs_adolescent_anaemia_patient_clinic','rhs_adolescent_anaemia_patient_home','rhs_adolescent_anaemia_patient_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                              <tr>
                                <td colspan="4">Anaemia patient referred </td>
                                <td>
									<div class="row">
                                        <input name="rhs_adolescent_anaemia_referred_clinic" type="text" class="verysmall" id="rhs_adolescent_anaemia_referred_clinic" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input name="rhs_adolescent_anaemia_referred_home" type="text" class="verysmall" id="rhs_adolescent_anaemia_referred_home" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="rhs_adolescent_anaemia_referred_total" name="rhs_adolescent_anaemia_referred_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('rhs_adolescent_anaemia_referred_clinic','rhs_adolescent_anaemia_referred_home','rhs_adolescent_anaemia_referred_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                              <tr>
                                <td colspan="4">Iodine dificiency patient </td>
                                <td>
									<div class="row">
                                        <input name="rhs_adolescent_iodine_patient_clinic" type="text" class="verysmall" id="rhs_adolescent_iodine_patient_clinic" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input name="rhs_adolescent_iodine_patient_home" type="text" class="verysmall" id="rhs_adolescent_iodine_patient_home" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="rhs_adolescent_iodine_patient_total" name="rhs_adolescent_iodine_patient_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('rhs_adolescent_iodine_patient_clinic','rhs_adolescent_iodine_patient_home','rhs_adolescent_iodine_patient_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                              <tr>
                                <td colspan="4">Iodine dificiency patient referred </td>
                                <td>
									<div class="row">
                                        <input name="rhs_adolescent_iodine_referred_clinic" type="text" class="verysmall" id="rhs_adolescent_iodine_referred_clinic" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input name="rhs_adolescent_iodine_referred_home" type="text" class="verysmall" id="rhs_adolescent_iodine_referred_home" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="rhs_adolescent_iodine_referred_total" name="rhs_adolescent_iodine_referred_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('rhs_adolescent_iodine_referred_clinic','rhs_adolescent_iodine_referred_home','rhs_adolescent_iodine_referred_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                              <tr>
                                <td colspan="4">Dysmenorrhoea patient</td>
                                <td>
									<div class="row">
                                        <input name="rhs_adolescent_dysmenorrhoea_patient_clinic" type="text" class="verysmall" id="rhs_adolescent_dysmenorrhoea_patient_clinic" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input name="rhs_adolescent_dysmenorrhoea_patient_home" type="text" class="verysmall" id="rhs_adolescent_dysmenorrhoea_patient_home" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="rhs_adolescent_dysmenorrhoea_patient_total" name="rhs_adolescent_dysmenorrhoea_patient_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('rhs_adolescent_dysmenorrhoea_patient_clinic','rhs_adolescent_dysmenorrhoea_patient_home','rhs_adolescent_dysmenorrhoea_patient_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                              <tr>
                                <td colspan="4">Dysmenorrhoea patient referred</td>
                                <td>
									<div class="row">
                                        <input name="rhs_adolescent_dysmenorrhoea_referred_clinic" type="text" class="verysmall" id="rhs_adolescent_dysmenorrhoea_referred_clinic" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input name="rhs_adolescent_dysmenorrhoea_referred_home" type="text" class="verysmall" id="rhs_adolescent_dysmenorrhoea_referred_home" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="rhs_adolescent_dysmenorrhoea_referred_total" name="rhs_adolescent_dysmenorrhoea_referred_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('rhs_adolescent_dysmenorrhoea_referred_clinic','rhs_adolescent_dysmenorrhoea_referred_home','rhs_adolescent_dysmenorrhoea_referred_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                              <tr>
                                <td colspan="2" rowspan="2"># of RTI/STI patient </td>
                                <td colspan="3">Female</td>
                                <td>
									<div class="row">
                                        <input name="rhs_rti_patient_female_clinic" type="text" class="verysmall" id="rhs_rti_patient_female_clinic" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input name="rhs_rti_patient_female_home" type="text" class="verysmall" id="rhs_rti_patient_female_home" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="rhs_rti_patient_female_total" name="rhs_rti_patient_female_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('rhs_rti_patient_female_clinic','rhs_rti_patient_female_home','rhs_rti_patient_female_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                              <tr>
                                <td colspan="3">Male</td>
                                <td>
									<div class="row">
                                        <input name="rhs_rti_patient_male_clinic" type="text" class="verysmall" id="rhs_rti_patient_male_clinic" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input name="rhs_rti_patient_male_home" type="text" class="verysmall" id="rhs_rti_patient_male_home" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="rhs_rti_patient_male_total" name="rhs_rti_patient_male_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('rhs_rti_patient_male_clinic','rhs_rti_patient_male_home','rhs_rti_patient_male_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                              <tr>
                                <td colspan="2" rowspan="2"># of RTI/STI patient referred </td>
                                <td colspan="3">Female</td>
                                <td>
									<div class="row">
                                        <input name="rhs_rti_referred_female_clinic" type="text" class="verysmall" id="rhs_rti_referred_female_clinic" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input name="rhs_rti_referred_female_home" type="text" class="verysmall" id="rhs_rti_referred_female_home" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="rhs_rti_referred_female_total" name="rhs_rti_referred_female_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('rhs_rti_referred_female_clinic','rhs_rti_referred_female_home','rhs_rti_referred_female_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                              <tr>
                                <td colspan="3">Male</td>
                                <td>
									<div class="row">
                                        <input name="rhs_rti_referred_male_clinic" type="text" class="verysmall" id="rhs_rti_referred_male_clinic" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input name="rhs_rti_referred_male_home" type="text" class="verysmall" id="rhs_rti_referred_male_home" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="rhs_rti_referred_male_total" name="rhs_rti_referred_male_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('rhs_rti_referred_male_clinic','rhs_rti_referred_male_home','rhs_rti_referred_male_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                              <tr>
                                <td colspan="5">#  of RTI/STI/HIV/AIDS Patients received advice</td>
                                <td>
									<div class="row">
                                        <input name="rhs_rti_received_advice_clinic" type="text" class="verysmall" id="rhs_rti_received_advice_clinic" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input name="rhs_rti_received_advice_home" type="text" class="verysmall" id="rhs_rti_received_advice_home" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="rhs_rti_received_advice_total" name="rhs_rti_received_advice_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('rhs_rti_received_advice_clinic','rhs_rti_received_advice_home','rhs_rti_received_advice_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                              <tr>
                                <td colspan="5"># of  ECP acceptor</td>
                                <td>
									<div class="row">
                                        <input name="rhs_ecp_acceptor_clinic" type="text" class="verysmall" id="rhs_ecp_acceptor_clinic" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input name="rhs_ecp_acceptor_home" type="text" class="verysmall" id="rhs_ecp_acceptor_home" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="rhs_ecp_acceptor_total" name="rhs_ecp_acceptor_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('rhs_ecp_acceptor_clinic','rhs_ecp_acceptor_home','rhs_ecp_acceptor_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                              <tr>
                                <td colspan="5"># of  MR service received</td>
                                <td>
									<div class="row">
                                        <input name="rhs_mr_received_clinic" type="text" class="verysmall" id="rhs_mr_received_clinic" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input name="rhs_mr_received_home" type="text" class="verysmall" id="rhs_mr_received_home" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="rhs_mr_received_total" name="rhs_mr_received_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('rhs_mr_received_clinic','rhs_mr_received_home','rhs_mr_received_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                        </table>
						<br />
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							  <tr>
								<td>&nbsp;</td>
							  </tr>
							  <tr>
                                <td colspan="10">
                                    <div class="row buttons">
                                        <button type="submit"><span>Save</span></button>
                                        <button type="submit"><span>Save & Next</span></button>
                                    </div>
                                </td>
                            </tr>
                            </table>

                        <!--</form>-->
                    </div>


					<div id="tab3" class="tabdiv">
                        <!--<form action="#" method="post">-->
                        <table class="tableForm">

                              <tr>
                                <td width="60%" align="center" colspan="5">Type of Service </td>
                                <td width="10%" align="center">Clinic</td>
                                <td width="10%" align="center">Satellite  Clinic/Home</td>
                                <td width="10%" align="center">Total</td>
                                <td width="10%" align="center">Comments</td>
                              </tr>
                              <tr>
                                <td rowspan="5" align="center"><div class="rotate-text">Child (0-1) <br/>vaccinated</div></td>
                                <td colspan="4">BCG</td>
                                <td>
									<div class="row">
                                        <input name="child_bcg_clinic" type="text" class="verysmall" id="child_bcg_clinic" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input name="child_bcg_home" type="text" class="verysmall" id="child_bcg_home" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="child_bcg_total" name="child_bcg_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('child_bcg_clinic','child_bcg_home','child_bcg_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                              <tr>
                                <td colspan="3" rowspan="3">DPT  and Hepatitis B</td>
                                <td width="60%">1</td>
                                <td>
									<div class="row">
                                        <input name="child_dpt1_clinic" type="text" class="verysmall" id="child_dpt1_clinic" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input name="child_dpt1_home" type="text" class="verysmall" id="child_dpt1_home" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="child_dpt1_total" name="child_dpt1_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('child_dpt1_clinic','child_dpt1_home','child_dpt1_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                              <tr>
                                <td>2</td>
                                <td>
									<div class="row">
                                        <input name="child_dpt2_clinic" type="text" class="verysmall" id="child_dpt2_clinic" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input name="child_dpt2_home" type="text" class="verysmall" id="child_dpt2_home" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="child_dpt2_total" name="child_dpt2_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('child_dpt2_clinic','child_dpt2_home','child_dpt2_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                              <tr>
                                <td>3</td>
                                <td>
									<div class="row">
                                        <input name="child_dpt3_clinic" type="text" class="verysmall" id="child_dpt3_clinic" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input name="child_dpt3_home" type="text" class="verysmall" id="child_dpt3_home" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="child_dpt3_total" name="child_dpt3_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('child_dpt3_clinic','child_dpt3_home','child_dpt3_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                              <tr>
                                <td colspan="4">Measles</td>
                                <td>
									<div class="row">
                                        <input name="child_measles_clinic" type="text" class="verysmall" id="child_measles_clinic" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input name="child_measles_home" type="text" class="verysmall" id="child_measles_home" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="child_measles_total" name="child_measles_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('child_measles_clinic','child_measles_home','child_measles_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                              <tr>
                                <td colspan="5"># of child received Polio</td>
                                <td>
									<div class="row">
                                        <input name="child_polio_clinic" type="text" class="verysmall" id="child_polio_clinic" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input name="child_polio_home" type="text" class="verysmall" id="child_polio_home" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="child_polio_total" name="child_polio_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('child_polio_clinic','child_polio_home','child_polio_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                              <tr>
                                <td colspan="5"># of child received Vit-A</td>
                                <td>
									<div class="row">
                                        <input name="child_vita_clinic" type="text" class="verysmall" id="child_vita_clinic" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input name="child_vita_home" type="text" class="verysmall" id="child_vita_home" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="child_vita_total" name="child_vita_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('child_vita_clinic','child_vita_home','child_vita_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                              <tr>
                                <td colspan="5"># of ARI Child treated</td>
                                <td>
									<div class="row">
                                        <input name="child_ari_clinic" type="text" class="verysmall" id="child_ari_clinic" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input name="child_ari_home" type="text" class="verysmall" id="child_ari_home" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="child_ari_total" name="child_ari_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('child_ari_clinic','child_ari_home','child_ari_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                              <tr>
                                <td colspan="5"># of diarrhoea Child treated</td>
                                <td>
									<div class="row">
                                        <input name="child_diarrhoea_clinic" type="text" class="verysmall" id="child_diarrhoea_clinic" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input name="child_diarrhoea_home" type="text" class="verysmall" id="child_diarrhoea_home" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="child_diarrhoea_total" name="child_diarrhoea_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('child_diarrhoea_clinic','child_diarrhoea_home','child_diarrhoea_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                              <tr>
                                <td colspan="5"># of malnutrition Child treated</td>
                                <td>
									<div class="row">
                                        <input name="child_malnutrition_clinic" type="text" class="verysmall" id="child_malnutrition_clinic" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input name="child_malnutrition_home" type="text" class="verysmall" id="child_malnutrition_home" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="child_malnutrition_total" name="child_malnutrition_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('child_malnutrition_clinic','child_malnutrition_home','child_malnutrition_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                              <tr>
                                <td colspan="3" rowspan="3"># of child referred</td>
                                <td colspan="2">ARI</td>
                                <td>
									<div class="row">
                                        <input name="child_ari_referred_clinic" type="text" class="verysmall" id="child_ari_referred_clinic" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input name="child_ari_referred_home" type="text" class="verysmall" id="child_ari_referred_home" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="child_ari_referred_total" name="child_ari_referred_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('child_ari_referred_clinic','child_ari_referred_home','child_ari_referred_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                              <tr>
                                <td colspan="2">Diarrhoea</td>
                                <td>
									<div class="row">
                                        <input name="child_diarrhoea_referred_clinic" type="text" class="verysmall" id="child_diarrhoea_referred_clinic" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input name="child_diarrhoea_referred_home" type="text" class="verysmall" id="child_diarrhoea_referred_home" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="child_diarrhoea_referred_total" name="child_diarrhoea_referred_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('child_diarrhoea_referred_clinic','child_diarrhoea_referred_home','child_diarrhoea_referred_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                              <tr>
                                <td colspan="2">Malnutrition</td>
                                <td>
									<div class="row">
                                        <input name="child_malnutrition_referred_clinic" type="text" class="verysmall" id="child_malnutrition_referred_clinic" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input name="child_malnutrition_referred_home" type="text" class="verysmall" id="child_malnutrition_referred_home" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="child_malnutrition_referred_total" name="child_malnutrition_referred_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('child_malnutrition_referred_clinic','child_malnutrition_referred_home','child_malnutrition_referred_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                        </table>
						<br />
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							  <tr>
								<td>&nbsp;</td>
							  </tr>
							  <tr>
                                <td colspan="10">
                                    <div class="row buttons">
                                        <button type="submit"><span>Save</span></button>
                                        <button type="submit"><span>Save & Next</span></button>
                                    </div>
                                </td>
                            </tr>
                        </table>

                        <!--</form>-->
                    </div>


					<div id="tab4" class="tabdiv">
                        <!--<form action="#" method="post">-->
                        <table class="tableForm">

                              <tr>
                                <td width="60%" align="center" colspan="2">Type of Service </td>
                                <td width="10%" align="center">Clinic</td>
                                <td width="10%" align="center">Satellite  Clinic/Home</td>
                                <td width="10%" align="center">Total</td>
                                <td width="10%" align="center">Comments</td>
                              </tr>

                              <tr>
                                <td rowspan="2">Night blindness Patient</td>
                                <td>Boy</td>
                                <td>
									<div class="row">
                                        <input name="night_boy_clinic" type="text" class="verysmall" id="night_boy_clinic" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input name="night_boy_home" type="text" class="verysmall" id="night_boy_home" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="night_boy_total" name="night_boy_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('night_boy_clinic','night_boy_home','night_boy_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                              <tr>
                                <td>Girl</td>
                                <td>
									<div class="row">
                                        <input name="night_girl_clinic" type="text" class="verysmall" id="night_girl_clinic" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input name="night_girl_home" type="text" class="verysmall" id="night_girl_home" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="night_girl_total" name="night_girl_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('night_girl_clinic','night_girl_home','night_girl_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                              <tr>
                                <td rowspan="2">Other service given to child</td>
                                <td>&lt;  1 year old</td>
                                <td>
									<div class="row">
                                        <input name="other_service_1year_clinic" type="text" class="verysmall" id="other_service_1year_clinic" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input name="other_service_1year_home" type="text" class="verysmall" id="other_service_1year_home" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="other_service_1year_total" name="other_service_1year_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('other_service_1year_clinic','other_service_1year_home','other_service_1year_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                              <tr>
                                <td>1-5  year old</td>
                                <td>
									<div class="row">
                                        <input name="other_service_5year_clinic" type="text" class="verysmall" id="other_service_5year_clinic" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input name="other_service_5year_home" type="text" class="verysmall" id="other_service_5year_home" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="other_service_5year_total" name="other_service_5year_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('other_service_5year_clinic','other_service_5year_home','other_service_5year_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                              <tr>
                                <td colspan="2"># of person motivated for family planning</td>
                                <td>
									<div class="row">
                                        <input name="motivated_family_planning_clinic" type="text" class="verysmall" id="motivated_family_planning_clinic" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input name="motivated_family_planning_home" type="text" class="verysmall" id="motivated_family_planning_home" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="motivated_family_planning_total" name="motivated_family_planning_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('motivated_family_planning_clinic','motivated_family_planning_home','motivated_family_planning_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>

                              <tr>
                                <td colspan="2">School satellite conducted by SACMO</td>
                                <td>
									<div class="row">
                                        <input name="satellite_conducted_SACMO_clinic" type="text" class="verysmall" id="satellite_conducted_SACMO_clinic" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input name="satellite_conducted_SACMO_home" type="text" class="verysmall" id="satellite_conducted_SACMO_home" value="" />
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input id="satellite_conducted_SACMO_total" name="satellite_conducted_SACMO_total" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('satellite_conducted_SACMO_clinic','satellite_conducted_SACMO_home','satellite_conducted_SACMO_total','add');"/>
                                    </div>
								</td>
                                <td>
									<div class="row">
                                        <input type="text" value="" class="medium" />
                                    </div>
								</td>
                              </tr>
                        </table>
						<br />
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							  <tr>
								<td>&nbsp;</td>
							  </tr>
							  <tr>
                                <td colspan="10">
                                    <div class="row buttons">
                                        <button type="submit"><span>Save</span></button>
                                        <button type="submit"><span>Save & Next</span></button>
                                    </div>
                                </td>
                            </tr>
                        </table>

                        <!--</form>-->
                    </div>



					<div id="tab5" class="tabdiv">
						<table class="tableForm">

                              <tr>
                                <td colspan="2" rowspan="2" align="center">&nbsp;</td>
                                <td rowspan="2" align="center" style="padding-left:3px">Oral Pill (Sukhi) (cys)</td>
                                <td rowspan="2" align="center">Condom (Nirapad) (pcs)</td>
                                <td rowspan="2" align="center"><p align="center">Injectable  (Depo) (Vial)</p>                                </td>
                                <td rowspan="2" align="center">IUD (pcs)</td>
                                <td rowspan="2" align="center">Implant (set)</td>
                                <td rowspan="2" align="center">ECP (dose)</td>
                                <td rowspan="2" align="center">DDS kit (pcs)</td>
                                <td rowspan="2" align="center">IUD MSR kit (pcs)</td>
                                <td colspan="2" align="center"><p align="center">Permanent  method MSR kit</p>
                                (pcs)</td>
                                <td rowspan="2" align="center">MR kit (pcs)</td>
                              </tr>
                              <tr>
                                <td align="center">Male</td>
                                <td align="center">Female</td>
                              </tr>
                              <tr>
                                <td colspan="2">Opening balance</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
								</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
								</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
								</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
								</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                              </tr>
                              <tr>
                                <td colspan="2">Received this month (+)</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
								</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
								</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
								</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
								</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
								</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
								</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                              </tr>
                              <tr>
                                <td colspan="2">Total this month</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
								</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
								</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
								</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                              </tr>

                              <tr>
                                <td rowspan="2">Adj.</td>
                                <td>(+)</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
								</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
								</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
								</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                              </tr>
                              <tr>
                                <td>(-)</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
								</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
								</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
								</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                              </tr>
                              <tr>
                                <td colspan="2">Distributed this month (-)</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
								</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
								</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
								</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                              </tr>
                              <tr>
                                <td colspan="2">Closing balance</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
								</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
								</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
								</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>								</td>
                              </tr>
							  <tr>
                                <td colspan="2">Reason  for stock out, if any (write code)</td>
                                <td>
                                    <div class="row">
                                        <select name="selStockOut"  class="verysmall">
                                          <option value="A">A</option>
                                          <option value="B">B</option>
                                          <option value="C">C</option>
                                          <option value="D">D</option>
                                        </select>
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <select name="selStockOut"  class="verysmall">
                                          <option value="A">A</option>
                                          <option value="B">B</option>
                                          <option value="C">C</option>
                                          <option value="D">D</option>
                                        </select>
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <select name="selStockOut"  class="verysmall">
                                          <option value="A">A</option>
                                          <option value="B">B</option>
                                          <option value="C">C</option>
                                          <option value="D">D</option>
                                        </select>
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <select name="selStockOut"  class="verysmall">
                                          <option value="A">A</option>
                                          <option value="B">B</option>
                                          <option value="C">C</option>
                                          <option value="D">D</option>
                                        </select>
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <select name="selStockOut"  class="verysmall">
                                          <option value="A">A</option>
                                          <option value="B">B</option>
                                          <option value="C">C</option>
                                          <option value="D">D</option>
                                        </select>
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <select name="selStockOut"  class="verysmall">
                                          <option value="A">A</option>
                                          <option value="B">B</option>
                                          <option value="C">C</option>
                                          <option value="D">D</option>
                                        </select>
                                    </div>
								</td>
                                <td>
                                    <div class="row">
                                        <select name="selStockOut"  class="verysmall">
                                          <option value="A">A</option>
                                          <option value="B">B</option>
                                          <option value="C">C</option>
                                          <option value="D">D</option>
                                        </select>
                                    </div>
								</td>
                                <td>
                                    <div class="row">
                                        <select name="selStockOut"  class="verysmall">
                                          <option value="A">A</option>
                                          <option value="B">B</option>
                                          <option value="C">C</option>
                                          <option value="D">D</option>
                                        </select>
                                    </div>
								</td>
                                <td>
                                    <div class="row">
                                        <select name="selStockOut"  class="verysmall">
                                          <option value="A">A</option>
                                          <option value="B">B</option>
                                          <option value="C">C</option>
                                          <option value="D">D</option>
                                        </select>
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <select name="selStockOut"  class="verysmall">
                                          <option value="A">A</option>
                                          <option value="B">B</option>
                                          <option value="C">C</option>
                                          <option value="D">D</option>
                                        </select>
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <select name="selStockOut"  class="verysmall">
                                          <option value="A">A</option>
                                          <option value="B">B</option>
                                          <option value="C">C</option>
                                          <option value="D">D</option>
                                        </select>
                                    </div>								</td>
                              </tr>
							  <tr>
                                <td colspan="2">Write  number of days in case stock out</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
								</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
								</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
								</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>								</td>
                              </tr>
							  <tr>
								<td colspan="13">
								<br />
								Stock out Code: <span class="box_room">A</span>&nbsp;Not received supply&nbsp;<span class="box_room">B</span>&nbsp;Inadequate supply&nbsp;<span class="box_room">C</span>&nbsp;Sudden demand increase&nbsp;<span class="box_room">D</span>&nbsp;Others<br /><br />
								  </td>
							  </tr>
                              <tr>
                                <td colspan="13">
                                    <div class="row buttons">
                                        <button type="submit"><span>Save</span></button>
                                        <button type="submit"><span>Save & Next</span></button>
                                    </div>
                                </td>
                            </tr>
                        </table>
					</div>


					<div id="tab6" class="tabdiv">
						<!--<form action="#" method="post">-->
						<table class="tableForm">

                              <tr>
                                <td colspan="5" align="left" style="padding-left:3px"><strong>#  of Pregnant Woman</strong></td>
                                <td colspan="6">
									<div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>								</td>
                              </tr>
                              <tr>
                                <td colspan="5" align="left" style="padding-left:3px"><strong>#  of Lactating Mother</strong></td>
                                <td colspan="6" >
									<div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>								</td>
                              </tr>
                              <tr>
                                <td colspan="5" align="left" style="padding-left:3px"><strong># of Non-lactating Mother/Caretaker </strong></td>
                                <td colspan="6" >
									<div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>								</td>
                              </tr>
                              <tr>
                                <td colspan="5" align="left" style="padding-left:3px"><strong>#  of live birth</strong></td>
                                <td colspan="6" >
									<div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>								</td>
                              </tr>
                              <tr>
                                <td colspan="5" align="center" style="padding-left:3px">&nbsp;</td>
                                <td colspan="2" align="center"><strong>Pregnant  Woman</strong></td>
                                <td colspan="2" align="center"><strong>Lactating  Mother</strong></td>
                                <td colspan="2" align="center"><strong>Non-Lactating Mother/Caretaker</strong></td>
                              </tr>
                              <tr>
                                <td colspan="5" align="left" style="padding-left:3px">Folic Acid given</td>
                                <td colspan="2" align="center">
									<div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>								</td>
                                <td colspan="2" align="center">
									<div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>								</td>
								<td colspan="2" align="center">
									<div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>								</td>
                              </tr>
                              <tr>
                                <td colspan="5" align="left" style="padding-left:3px">Counseling on IYCF</td>
                                <td colspan="2" align="center">
									<div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>								</td>
                                <td colspan="2" align="center">
									<div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>								</td>
								<td colspan="2" align="center">
									<div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>								</td>
                              </tr>
                              <tr>
                                <td colspan="5" align="left" style="padding-left:3px">Counseling on breast feeding</td>
                                <td colspan="2" align="center">
									<div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>								</td>
                                <td colspan="2" align="center">
									<div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>								</td>
								<td colspan="2" align="center">
									<div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>								</td>
                              </tr>
                              <tr>
                                <td colspan="11" align="center" style="padding-left:3px"><strong>Child Service</strong></td>
                              </tr>

                              <tr>
                                <td align="left" style="padding-left:3px" colspan="5"># of Child identified</td>
                                <td colspan="6">
                                	<div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
                                </td>
                              </tr>

                              <tr>
                                <td align="left" style="padding-left:3px" colspan="5"># of Child discharged</td>
                                <td colspan="6">
                                	<div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
                                </td>
                              </tr>

                              <tr>
                                <td align="left" style="padding-left:3px" colspan="5"># of Child absent for 3 times</td>
                                <td colspan="6">
                                	<div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
                                </td>
                              </tr>

                              <tr>
                                <td align="left" style="padding-left:3px" colspan="5"># of Child died</td>
                                <td colspan="6">
                                	<div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
                                </td>
                              </tr>

                              <tr>
                                <td align="left" style="padding-left:3px" colspan="5"># of Child cured</td>
                                <td colspan="6">
                                	<div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td rowspan="2" align="center" style="padding-left:3px"><strong>Age (0-&lt;36) </strong></td>
                                <td rowspan="2" align="center"><strong>Number</strong></td>
                                <td colspan="3" align="center"><strong>Breasfeeding</strong></td>
                                <td rowspan="2" align="center"><strong>Introduced Solid Food </strong></td>
                                <td rowspan="2" align="center"><strong>Minimum Diet </strong></td>
                                <td rowspan="2" align="center"><strong>Received MNP </strong></td>
                                <td rowspan="2" align="center"><strong>Received Vit-A </strong></td>
                                <td rowspan="2" align="center"><strong>Received Zinc </strong></td>
                                <td rowspan="2" align="center"><strong>Deworming</strong></td>
                              </tr>
                              <tr>
                                <td align="center"><p align="center"><strong>&lt; 1 hour </strong></p>                                </td>
                                <td align="center"><strong>Exclusive</strong></td>
                                <td align="center"><strong>Continuous</strong></td>
                              </tr>

                              <tr>
                                <td>0-<6 months</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                              </tr>
                              <tr>
                                <td>6-<9 months</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                               <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>								</td>
                                <td>&nbsp;</td>
                              </tr>
                              <tr>
                                <td>9-<12 months</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                                <td>&nbsp;</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>								</td>
                                <td>&nbsp;</td>
                              </tr>

                              <tr>
                                <td>12-<24 months</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                                <td>&nbsp;</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>								</td>
                              </tr>
                              <tr>
                                <td>25-<36 months</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>								</td>
                              </tr>



                              <tr>
                                <td colspan="11">
                                    <div class="row buttons">
                                        <button type="submit"><span>Save</span></button>
                                        <button type="submit"><span>Save & Next</span></button>
                                    </div>                                </td>
                            </tr>
                        </table>
						<!--</form>-->
					</div>


					<div id="tab7" class="tabdiv">
						<!--<form action="#" method="post">-->
						<table class="tableForm">

                              <tr>
                                <td rowspan="2" align="center" style="padding-left:3px"><strong>SL </strong></td>
                                <td rowspan="2" align="center"><strong>Name of Items </strong></td>
                                <td rowspan="2" align="center"><p align="center"><strong>Opening Balance </strong></p></td>
                                <td rowspan="2" align="center"><strong>Received this month (+) </strong></td>
                                <td rowspan="2" align="center"><strong>Total (3+4) </strong></td>
                                <td colspan="2" align="center"><strong>Adjustment</strong><strong></strong></td>
                                <td rowspan="2" align="center"><strong>Distribution </strong></td>
                                <td rowspan="2" align="center"><strong>Closing  balance (5+6-7-8)</strong></td>
                              </tr>
                              <tr>
                                <td align="center">(+)</td>
                                <td align="center">(-)</td>
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
                              </tr>
                              <tr>
                                <td align="center">1</td>
                                <td>
                                    <div class="row">
                                        <label>MNP</label>
                                    </div>
                                </td>
                                <td>
									<div class="row">
                                        <input name="open_balance_mnp" type="text" class="verysmall" id="open_balance_mnp" value="" />
                                    </div>								</td>
                                <td>
									<div class="row">
                                        <input name="received_mnp" type="text" class="verysmall" id="received_mnp" value="" />
                                    </div>								</td>
                                <td>
									<div class="row">
                                        <input id="total_mnp" name="total_mnp" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('open_balance_mnp','received_mnp','total_mnp','add');"/>
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input name="adjust_plus_mnp" type="text" class="verysmall" id="adjust_plus_mnp" value="" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input name="adjust_minus_mnp" type="text" class="verysmall" id="adjust_minus_mnp" value="" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input name="distribution_mnp" type="text" class="verysmall" id="distribution_mnp" value="" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input name="closing_balance_mnp" type="text" class="verysmall" id="closing_balance_mnp" value="" onfocus="calculateCommodityInformationClosingBalance('total_mnp','adjust_plus_mnp','adjust_minus_mnp','distribution_mnp','closing_balance_mnp');"/>
                                    </div>								</td>
                              </tr>
                              <tr>
                                <td align="center">2</td>
                                <td>
                                    <div class="row">
										<label>Zinc</label>
									</div>
                                </td>
                                <td>
									<div class="row">
                                        <input name="open_balance_folicacid" type="text" class="verysmall" id="open_balance_folicacid" value="" />
                                    </div>								</td>
                                <td>
									<div class="row">
                                        <input name="received_folicacid" type="text" class="verysmall" id="received_folicacid" value="" />
                                    </div>								</td>
                                <td>
									<div class="row">
                                        <input id="total_folicacid" name="total_folicacid" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('open_balance_folicacid','received_folicacid','total_folicacid','add');"/>
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input name="adjust_plus_folicacid" type="text" class="verysmall" id="adjust_plus_folicacid" value="" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input name="adjust_minus_folicacid" type="text" class="verysmall" id="adjust_minus_folicacid" value="" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input name="distribution_folicacid" type="text" class="verysmall" id="distribution_folicacid" value="" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input name="closing_balance_folicacid" type="text" class="verysmall" id="closing_balance_folicacid" value="" onfocus="calculateCommodityInformationClosingBalance('total_folicacid','adjust_plus_folicacid','adjust_minus_folicacid','distribution_folicacid','closing_balance_folicacid');"/>
                                    </div>								</td>
                              </tr>
                              <tr>
                                <td align="center">3</td>
                                <td>
                                    <div class="row">
                                        <label>Cap. Deworming</label>

									</div>
                                </td>
                                <td>
									<div class="row">
                                        <input name="open_balance_zinc" type="text" class="verysmall" id="open_balance_zinc" value="" />
                                    </div>								</td>
                                <td>
									<div class="row">
                                        <input name="received_zinc" type="text" class="verysmall" id="received_zinc" value="" />
                                    </div>								</td>
                                <td>
									<div class="row">
                                        <input id="total_zinc" name="total_zinc" type="text" value="" class="verysmall" onfocus="calculateIntegerValueByTwoParameter('open_balance_zinc','received_zinc','total_zinc','add');"/>
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input name="adjust_plus_zinc" type="text" class="verysmall" id="adjust_plus_zinc" value="" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input name="adjust_minus_zinc" type="text" class="verysmall" id="adjust_minus_zinc" value="" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input name="distribution_zinc" type="text" class="verysmall" id="distribution_zinc" value="" />
                                    </div>								</td>
                                <td>
                                    <div class="row">
                                        <input name="closing_balance_zinc" type="text" class="verysmall" id="closing_balance_zinc" value="" onfocus="calculateCommodityInformationClosingBalance('total_zinc','adjust_plus_zinc','adjust_minus_zinc','distribution_zinc','closing_balance_zinc');"/>
                                    </div>								</td>
                              </tr>

                              <tr>
                                <td colspan="9">
                                    <div class="row buttons">
                                        <button type="submit"><span>Save</span></button>
                                        <button type="submit"><span>Save & Next</span></button>
                                    </div>                                </td>
                            </tr>
                        </table>
						<!--</form>-->
					</div>
                  </html:form>
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