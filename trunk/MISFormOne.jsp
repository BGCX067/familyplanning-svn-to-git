<%@ include file="common/Taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>

	<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
	<title>MIS Form-1</title>

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
					<h2>MIS Form1</h2>
					
				</div>

                <div class="content tabs">
                    <div class="masterinfo">
                        <table>
                            <tr>
                                <td>Year</td>
                                <td>
                                    <div class="row">
                                        <select>
                                            <option value="">Select one</option>
                                            <option value="2011">2011</option>
                                            <option value="2010">2010</option>
                                            <option value="2009">2009</option>
											<option value="2008">2008</option>
											<option value="2007">2007</option>
											<option value="2006">2006</option>
											<option value="2005">2005</option>
											<option value="2004">2004</option>
											<option value="2003">2003</option>
											<option value="2002">2002</option>
											<option value="2001">2001</option>
											<option value="2000">2000</option>
                                        </select>
                                    </div>
                                </td>
                                <td>Month</td>
                                <td>
                                    <div class="row">
                                        <select>
                                            <option value="">Select one</option>
       										<option value="1">January</option>
											<option value="2">February</option>
											<option value="3">March</option>
											<option value="4">April</option>
											<option value="5">May</option>
											<option value="6">June</option>
											<option value="7">July</option>
											<option value="8">August</option>
											<option value="9">September</option>
											<option value="10">October</option>
											<option value="11">November</option>
											<option value="12">December</option>
                                        </select>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>

                <html:form action="/MISForm?reqCode=promtMISFormOne" method="post">                    
                    <div class="masterinfo">
                        <!--<form action="" name="masterinfo">-->
                        <table>
                            <tr>
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
                                
                                <td>Ward #:</td>
                                <td>
                                    <div class="row">
                                        <select name="ward" id="ward">
                                            <option value="">Select ward</option>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                        </select>
                                    </div>
                                </td>

                                <td>Unit #:</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
                                </td>

                            </tr>
                        </table>
                        <!--</form>-->
                    </div>
                    <ul class="tabnav">
						<li><a href="#tab1" id="litab1">(A) Family Planning Method</a></li>
						<li><a href="#tab2" id="litab2">(B) Reproductive Health Service</a></li>
						<li><a href="#tab3" id="litab3">(C) Child (0-5 yrs) Service</a></li>
                        <li><a href="#tab4" id="litab4">(D) Birth-Death</a></li>
                        <li><a href="#tab5" id="litab5">(E) Others</a></li>
                        <li><a href="#tab6" id="litab6">Monthly stock and distribution</a></li>
                        <li><a href="#tab7" id="litab7">Early Child Development</a></li>
						<li><a href="#tab8" id="litab8">MYCNSIA Service Information</a></li>
						<li><a href="#tab9" id="litab9">Nutrition Commodity Information</a></li>
                    </ul>

					<div id="tab1" class="tabdiv">
                        <!--<form action="MISFormOne.jsp" method="post">-->
                        <table class="tableForm">
							  <tr>
                                <td colspan="2" rowspan="3">Particulars</td>
                                <td colspan="8">Method Acceptor</td>
                              </tr>
                              <tr>
                                <td rowspan="2" style="padding-left:3px">Pill</td>
                                <td rowspan="2">Condom</td>
                                <td rowspan="2">Injectables</td>
                                <td rowspan="2">IUD</td>
                                <td rowspan="2">Implant</td>
                                <td colspan="2">Permanent Method</td>
                                <td rowspan="2">Total</td>
                              </tr>
                              <tr>
                                <td>Male</td>
                                <td>Female</td>
                              </tr>
                              <tr>
                                <td colspan="2">Old</td>
                                <td>
                                    <div class="row">
                                        <input type="text" class="verysmall" name="oldPill" id="oldPill" onkeyup="calculateIntegerValueByTwoParameter('oldPill','newPill','currentMonthTotalPill','add');sumBySevenParameter('oldPill','oldCondom','oldInjectables','oldIUD','oldImplant','oldPermanentMethodMale','oldPermanentMethodFemale','oldTotal','add');"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="oldCondom" id="oldCondom" onkeyup="sumBySevenParameter('oldPill','oldCondom','oldInjectables','oldIUD','oldImplant','oldPermanentMethodMale','oldPermanentMethodFemale','oldTotal','add');"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="oldInjectables" id="oldInjectables" onkeyup="sumBySevenParameter('oldPill','oldCondom','oldInjectables','oldIUD','oldImplant','oldPermanentMethodMale','oldPermanentMethodFemale','oldTotal','add');"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="oldIUD" id="oldIUD" onkeyup="sumBySevenParameter('oldPill','oldCondom','oldInjectables','oldIUD','oldImplant','oldPermanentMethodMale','oldPermanentMethodFemale','oldTotal','add');"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="oldImplant" id="oldImplant" onkeyup="sumBySevenParameter('oldPill','oldCondom','oldInjectables','oldIUD','oldImplant','oldPermanentMethodMale','oldPermanentMethodFemale','oldTotal','add');"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="oldPermanentMethodMale" id="oldPermanentMethodMale" onkeyup="sumBySevenParameter('oldPill','oldCondom','oldInjectables','oldIUD','oldImplant','oldPermanentMethodMale','oldPermanentMethodFemale','oldTotal','add');"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="oldPermanentMethodFemale" id="oldPermanentMethodFemale" onkeyup="sumBySevenParameter('oldPill','oldCondom','oldInjectables','oldIUD','oldImplant','oldPermanentMethodMale','oldPermanentMethodFemale','oldTotal','add');"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="oldTotal" id="oldTotal" onfocus="sumBySevenParameter('oldPill','oldCondom','oldInjectables','oldIUD','oldImplant','oldPermanentMethodMale','oldPermanentMethodFemale','oldTotal','add');"/>
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td colspan="2">New</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="newPill" id="newPill" onkeyup="calculateIntegerValueByTwoParameter('oldPill','newPill','currentMonthTotalPill','add');sumBySevenParameter('newPill','newCondom','newInjectables','newIUD','newImplant','newPermanentMethodMale','newPermanentMethodFemale','newTotal','add');"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="newCondom" id="newCondom" onkeyup="calculateIntegerValueByTwoParameter('oldCondom','newCondom','currentMonthTotalCondom','add');sumBySevenParameter('newPill','newCondom','newInjectables','newIUD','newImplant','newPermanentMethodMale','newPermanentMethodFemale','newTotal','add');"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="newInjectables" id="newInjectables" onkeyup="calculateIntegerValueByTwoParameter('oldInjectables','newInjectables','currentMonthTotalInjectables','add');sumBySevenParameter('newPill','newCondom','newInjectables','newIUD','newImplant','newPermanentMethodMale','newPermanentMethodFemale','newTotal','add');"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="newIUD" id="newIUD" onkeyup="calculateIntegerValueByTwoParameter('oldIUD','newIUD','currentMonthTotalIUD','add');sumBySevenParameter('newPill','newCondom','newInjectables','newIUD','newImplant','newPermanentMethodMale','newPermanentMethodFemale','newTotal','add');"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="newImplant" id="newImplant" onkeyup="calculateIntegerValueByTwoParameter('oldImplant','newImplant','currentMonthTotalImplant','add');sumBySevenParameter('newPill','newCondom','newInjectables','newIUD','newImplant','newPermanentMethodMale','newPermanentMethodFemale','newTotal','add');"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="newPermanentMethodMale" id="newPermanentMethodMale" onkeyup="calculateIntegerValueByTwoParameter('oldPermanentMethodMale','newPermanentMethodMale','currentMonthTotalMale','add');sumBySevenParameter('newPill','newCondom','newInjectables','newIUD','newImplant','newPermanentMethodMale','newPermanentMethodFemale','newTotal','add');"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="newPermanentMethodFemale" id="newPermanentMethodFemale" onkeyup="calculateIntegerValueByTwoParameter('oldPermanentMethodFemale','newPermanentMethodFemale','currentMonthTotalFemale','add');sumBySevenParameter('newPill','newCondom','newInjectables','newIUD','newImplant','newPermanentMethodMale','newPermanentMethodFemale','newTotal','add');"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="newTotal" id="newTotal" onfocus="sumBySevenParameter('newPill','newCondom','newInjectables','newIUD','newImplant','newPermanentMethodMale','newPermanentMethodFemale','newTotal','add');"/>
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td colspan="2">Current Month Total</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="currentMonthTotalPill" id="currentMonthTotalPill" onfocus="calculateIntegerValueByTwoParameter('oldPill','newPill','currentMonthTotalPill','add');sumBySevenParameter('currentMonthTotalPill','currentMonthTotalCondom','currentMonthTotalInjectables','currentMonthTotalIUD','currentMonthTotalImplant','currentMonthTotalMale','currentMonthTotalFemale','currentMonthTotal','add');"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="currentMonthTotalCondom" id="currentMonthTotalCondom" onfocus="calculateIntegerValueByTwoParameter('oldCondom','newCondom','currentMonthTotalCondom','add');sumBySevenParameter('currentMonthTotalPill','currentMonthTotalCondom','currentMonthTotalInjectables','currentMonthTotalIUD','currentMonthTotalImplant','currentMonthTotalMale','currentMonthTotalFemale','currentMonthTotal','add');"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="currentMonthTotalInjectables" id="currentMonthTotalInjectables" onfocus="calculateIntegerValueByTwoParameter('oldInjectables','newInjectables','currentMonthTotalInjectables','add');sumBySevenParameter('currentMonthTotalPill','currentMonthTotalCondom','currentMonthTotalInjectables','currentMonthTotalIUD','currentMonthTotalImplant','currentMonthTotalMale','currentMonthTotalFemale','currentMonthTotal','add');"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="currentMonthTotalIUD" id="currentMonthTotalIUD" onfocus="calculateIntegerValueByTwoParameter('oldIUD','newIUD','currentMonthTotalIUD','add');sumBySevenParameter('currentMonthTotalPill','currentMonthTotalCondom','currentMonthTotalInjectables','currentMonthTotalIUD','currentMonthTotalImplant','currentMonthTotalMale','currentMonthTotalFemale','currentMonthTotal','add');"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="currentMonthTotalImplant" id="currentMonthTotalImplant" onfocus="calculateIntegerValueByTwoParameter('oldImplant','newImplant','currentMonthTotalImplant','add');sumBySevenParameter('currentMonthTotalPill','currentMonthTotalCondom','currentMonthTotalInjectables','currentMonthTotalIUD','currentMonthTotalImplant','currentMonthTotalMale','currentMonthTotalFemale','currentMonthTotal','add');"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="currentMonthTotalMale" id="currentMonthTotalMale" onfocus="calculateIntegerValueByTwoParameter('oldPermanentMethodMale','newPermanentMethodMale','currentMonthTotalMale','add');sumBySevenParameter('currentMonthTotalPill','currentMonthTotalCondom','currentMonthTotalInjectables','currentMonthTotalIUD','currentMonthTotalImplant','currentMonthTotalMale','currentMonthTotalFemale','currentMonthTotal','add');"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="currentMonthTotalFemale" id="currentMonthTotalFemale" onfocus="calculateIntegerValueByTwoParameter('oldPermanentMethodFemale','newPermanentMethodFemale','currentMonthTotalFemale','add');sumBySevenParameter('currentMonthTotalPill','currentMonthTotalCondom','currentMonthTotalInjectables','currentMonthTotalIUD','currentMonthTotalImplant','currentMonthTotalMale','currentMonthTotalFemale','currentMonthTotal','add');"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="currentMonthTotal" id="currentMonthTotal" onfocus="sumBySevenParameter('currentMonthTotalPill','currentMonthTotalCondom','currentMonthTotalInjectables','currentMonthTotalIUD','currentMonthTotalImplant','currentMonthTotalMale','currentMonthTotalFemale','currentMonthTotal','add');"/>
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td colspan="2">Previous Month Total</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="previousMonthTotalPill" id="previousMonthTotalPill" onkeyup="calculateIntegerValueByTwoParameter('currentMonthTotalPill','previousMonthTotalPill','unitTotalPill','add');calculateIntegerValueByTwoParameter('currentMonthTotalPill','previousMonthTotalPill','unitTotalPill','add');sumBySevenParameter('previousMonthTotalPill','previousMonthTotalCondom','previousMonthTotalInjectables','previousMonthTotalIUD','previousMonthTotalImplant','previousMonthTotalMale','previousMonthTotalFemale','previousMonthTotal','add');"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="previousMonthTotalCondom" id="previousMonthTotalCondom" onkeyup="calculateIntegerValueByTwoParameter('previousMonthTotalCondom','currentMonthTotalCondom','unitTotalCondom','add');calculateIntegerValueByTwoParameter('currentMonthTotalPill','previousMonthTotalPill','unitTotalPill','add');sumBySevenParameter('previousMonthTotalPill','previousMonthTotalCondom','previousMonthTotalInjectables','previousMonthTotalIUD','previousMonthTotalImplant','previousMonthTotalMale','previousMonthTotalFemale','previousMonthTotal','add');"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="previousMonthTotalInjectables" id="previousMonthTotalInjectables" onkeyup="calculateIntegerValueByTwoParameter('currentMonthTotalInjectables','previousMonthTotalInjectables','unitTotalInjectables','add');calculateIntegerValueByTwoParameter('currentMonthTotalPill','previousMonthTotalPill','unitTotalPill','add');sumBySevenParameter('previousMonthTotalPill','previousMonthTotalCondom','previousMonthTotalInjectables','previousMonthTotalIUD','previousMonthTotalImplant','previousMonthTotalMale','previousMonthTotalFemale','previousMonthTotal','add');"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="previousMonthTotalIUD" id="previousMonthTotalIUD" onkeyup="calculateIntegerValueByTwoParameter('currentMonthTotalIUD','previousMonthTotalIUD','unitTotalIUD','add');calculateIntegerValueByTwoParameter('currentMonthTotalPill','previousMonthTotalPill','unitTotalPill','add');sumBySevenParameter('previousMonthTotalPill','previousMonthTotalCondom','previousMonthTotalInjectables','previousMonthTotalIUD','previousMonthTotalImplant','previousMonthTotalMale','previousMonthTotalFemale','previousMonthTotal','add');"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="previousMonthTotalImplant" id="previousMonthTotalImplant" onkeyup="calculateIntegerValueByTwoParameter('currentMonthTotalImplant','previousMonthTotalImplant','unitTotalImplant','add');calculateIntegerValueByTwoParameter('currentMonthTotalPill','previousMonthTotalPill','unitTotalPill','add');sumBySevenParameter('previousMonthTotalPill','previousMonthTotalCondom','previousMonthTotalInjectables','previousMonthTotalIUD','previousMonthTotalImplant','previousMonthTotalMale','previousMonthTotalFemale','previousMonthTotal','add');"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="previousMonthTotalMale" id="previousMonthTotalMale" onkeyup="calculateIntegerValueByTwoParameter('currentMonthTotalMale','previousMonthTotalMale','unitTotalMale','add');calculateIntegerValueByTwoParameter('currentMonthTotalPill','previousMonthTotalPill','unitTotalPill','add');sumBySevenParameter('previousMonthTotalPill','previousMonthTotalCondom','previousMonthTotalInjectables','previousMonthTotalIUD','previousMonthTotalImplant','previousMonthTotalMale','previousMonthTotalFemale','previousMonthTotal','add');"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="previousMonthTotalFemale" id="previousMonthTotalFemale" onkeyup="calculateIntegerValueByTwoParameter('previousMonthTotalFemale','currentMonthTotalFemale','unitTotalFemale','add');calculateIntegerValueByTwoParameter('currentMonthTotalPill','previousMonthTotalPill','unitTotalPill','add');sumBySevenParameter('previousMonthTotalPill','previousMonthTotalCondom','previousMonthTotalInjectables','previousMonthTotalIUD','previousMonthTotalImplant','previousMonthTotalMale','previousMonthTotalFemale','previousMonthTotal','add');"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="previousMonthTotal" id="previousMonthTotal" onfocus="sumBySevenParameter('previousMonthTotalPill','previousMonthTotalCondom','previousMonthTotalInjectables','previousMonthTotalIUD','previousMonthTotalImplant','previousMonthTotalMale','previousMonthTotalFemale','previousMonthTotal','add');"/>
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td colspan="2">Unit Total</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="unitTotalPill" id="unitTotalPill" onfocus="calculateIntegerValueByTwoParameter('currentMonthTotalPill','previousMonthTotalPill','unitTotalPill','add');sumBySevenParameter('unitTotalPill','unitTotalCondom','unitTotalInjectables','unitTotalIUD','unitTotalImplant','unitTotalMale','unitTotalFemale','unitTotalTotal','add');"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="unitTotalCondom" id="unitTotalCondom" onfocus="calculateIntegerValueByTwoParameter('currentMonthTotalCondom','previousMonthTotalCondom','unitTotalCondom','add');sumBySevenParameter('unitTotalPill','unitTotalCondom','unitTotalInjectables','unitTotalIUD','unitTotalImplant','unitTotalMale','unitTotalFemale','unitTotalTotal','add');"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="unitTotalInjectables" id="unitTotalInjectables" onfocus="calculateIntegerValueByTwoParameter('currentMonthTotalInjectables','previousMonthTotalInjectables','unitTotalInjectables','add');sumBySevenParameter('unitTotalPill','unitTotalCondom','unitTotalInjectables','unitTotalIUD','unitTotalImplant','unitTotalMale','unitTotalFemale','unitTotalTotal','add');"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="unitTotalIUD" id="unitTotalIUD" onfocus="calculateIntegerValueByTwoParameter('currentMonthTotalIUD','previousMonthTotalIUD','unitTotalIUD','add');sumBySevenParameter('unitTotalPill','unitTotalCondom','unitTotalInjectables','unitTotalIUD','unitTotalImplant','unitTotalMale','unitTotalFemale','unitTotalTotal','add');"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="unitTotalImplant" id="unitTotalImplant" onfocus="calculateIntegerValueByTwoParameter('currentMonthTotalImplant','previousMonthTotalImplant','unitTotalImplant','add');sumBySevenParameter('unitTotalPill','unitTotalCondom','unitTotalInjectables','unitTotalIUD','unitTotalImplant','unitTotalMale','unitTotalFemale','unitTotalTotal','add');"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="unitTotalMale" id="unitTotalMale" onfocus="calculateIntegerValueByTwoParameter('currentMonthTotalMale','previousMonthTotalMale','unitTotalMale','add');sumBySevenParameter('unitTotalPill','unitTotalCondom','unitTotalInjectables','unitTotalIUD','unitTotalImplant','unitTotalMale','unitTotalFemale','unitTotalTotal','add');"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="unitTotalFemale" id="unitTotalFemale" onfocus="calculateIntegerValueByTwoParameter('currentMonthTotalFemale','previousMonthTotalFemale','unitTotalFemale','add');sumBySevenParameter('unitTotalPill','unitTotalCondom','unitTotalInjectables','unitTotalIUD','unitTotalImplant','unitTotalMale','unitTotalFemale','unitTotalTotal','add');"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="unitTotalTotal" id="unitTotalTotal" onfocus="sumBySevenParameter('unitTotalPill','unitTotalCondom','unitTotalInjectables','unitTotalIUD','unitTotalImplant','unitTotalMale','unitTotalFemale','unitTotalTotal','add');"/>
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td rowspan="2">Drop out in current month</td>
                                <td>Not accepted any method</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="namPill" id="namPill"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="namCondom" id="namCondom"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="namInjectables" id="namInjectables"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="namIUD" id="namIUD"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="namImplant" id="namImplant" />
                                    </div>
                                </td>
                                <td>
                                    
                                </td>
                                <td>
                                    
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="hidden" name="dummy1" id="dummy1" value="0"/>
                                        <input type="hidden" name="dummy2" id="dummy2" value="0"/>
                                        <input type="text" value="" class="verysmall" name="namTotal" id="namTotal" onfocus="sumBySevenParameter('namPill','namCondom','namInjectables','namIUD','namImplant','dummy1','dummy1','namTotal','add');"/>
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td>Accepted other method</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="amPill" id="amPill"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="amCondom" id="amCondom"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="amInjectables" id="amInjectables"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="amIUD" id="amIUD"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="amImplant" id="amImplant"/>
                                    </div>
                                </td>
                                <td>
                                    
                                </td>
                                <td>
                                    
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="amTotal" id="amTotal" onfocus="sumBySevenParameter('amPill','amCondom','amInjectables','amIUD','amImplant','dummy1','dummy2','amTotal','add');"/>
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td colspan="2">Refer for Method</td>
                                <td>&nbsp;
                                    
                                </td>
                                <td>&nbsp;
                                    
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="rfmInjectables" id="rfmInjectables"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="rfmIUD" id="rfmIUD"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="rfmImplant" id="rfmImplant"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="rfmMale" id="rfmMale"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="rfmFemale" id="rfmFemale"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="rfmTotal" id="rfmTotal" onfocus="sumBySevenParameter('rfmInjectables','rfmIUD','rfmImplant','rfmMale','rfmFemale','dummy1','dummy2','rfmTotal','add');"/>
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td colspan="2">Refer for side effect</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="rfsPill" id="rfsPill"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="rfsCondom" id="rfsCondom"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="rfsInjectables" id="rfsInjectables"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="rfsIUD" id="rfsIUD"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="rfsImplant" id="rfsImplant"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="rfsMale" id="rfsMale"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="rfsFemale" id="rfsFemale"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="rfsTotal" id="rfsTotal" onfocus="sumBySevenParameter('rfsPill','rfsCondom','rfsInjectables','rfsIUD','rfsImplant','rfsMale','rfsFemale','rfsTotal','add');"/>
                                    </div>
                                </td>
                              </tr>
                              
                            <tr>
                                <td colspan="10">
                                    <div class="row buttons">
                                        <button type="button" name="save"><span>Save</span></button>
                                        <button type="button" name="next" onclick="MoveToStep(1,2,9);"><span>Save & Next</span></button>
                                    </div>
                                </td>
                            </tr>

                        </table>
                        <!--</form>-->
                    </div>

					<div id="tab2" class="tabdiv">
                        <!--<form action="MISFormOne.jsp" method="post">-->
                        <table class="tableForm">
							  <tr>
                                <td colspan="5"># of  total pregnant woman</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td colspan="5"># of  referred risk/complicated pregnant woman</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td rowspan="2"># of  infertile woman</td>
                                <td colspan="4">Advice  given</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td colspan="4">Referred</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td rowspan="6"># of  Adolescents</td>
                                <td colspan="4"># of  anaemia case</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td colspan="4"># of  anaemia case referred</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td colspan="4"># of  iodine deficiency case</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td colspan="4"># of  iodine deficiency case referred</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td colspan="4"># of  dysmenorrhoea case</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td colspan="4"># of  dysmenorrhoea case referred</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td rowspan="2">#  of RTI/STI Patient</td>
                                <td colspan="4">Female</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td colspan="4">Male</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td rowspan="2">#  of RTI/STI Patient referred</td>
                                <td colspan="4">Female</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td colspan="4">Male</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td colspan="5">#  of RTI/STI/HIV/AIDS Patients received advice</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td rowspan="2">Woman  TT</td>
                                <td>1st</td>
                                <td>2nd</td>
                                <td>3rd</td>
                                <td>4th</td>
                                <td>5th</td>
                              </tr>
                              <tr>
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
                              </tr>
                              <tr>
                                <td># of  ECP Acceptor</td>
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
                              </tr>
                            
                              <tr>
                                <td colspan="6">
                                    <div class="row buttons">
                                        <button type="button" name="save"><span>Save</span></button>
                                        <button type="button" name="next" onclick="MoveToStep(2,3,9);"><span>Save & Next</span></button>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <!--</form>-->
                    </div>

					<div id="tab3" class="tabdiv">
                        <!--<form action="MISFormOne.jsp" method="post">-->
                        <table class="tableForm">
                            <tr>
                                <td rowspan="5"># of  child (0-1) received TT </td>
                                <td colspan="2">BCG</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td rowspan="3">DPT  and Hepatitis-B</td>
                                <td>1</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td>2</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td>3</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td colspan="2">Measles</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td colspan="3"># of  child received Polio</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td colspan="3"># of  child received Vit-A</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td colspan="3"># of  ARI Child treated</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td colspan="3"># of  diarrhoea Child treated</td>
                                <td rowspan="2">
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td colspan="3"># of  malnutrition Child treated</td>
                              </tr>
                              <tr>
                                <td colspan="2" rowspan="3"># of  child referred</td>
                                <td>ARI</td>
                                <td rowspan="2">
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td>Diarrhoea</td>
                              </tr>
                              <tr>
                                <td>Malnutrition</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td colspan="2" rowspan="2">Night  blindness Patient</td>
                                <td>Boy</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td>Girl</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>
                                </td>
                              </tr>

                              <tr>
                                <td colspan="4">
                                    <div class="row buttons">
                                        <button type="button" name="save"><span>Save</span></button>
                                        <button type="button" name="next" onclick="MoveToStep(3,4,9);"><span>Save & Next</span></button>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <!--</form>-->
					</div>

                    <div id="tab4" class="tabdiv">
                        <!--<form action="MISFormOne.jsp" method="post">-->
                        <table class="tableForm">
							  <tr>
                                <td rowspan="4"># Live birth</td>
                                <td rowspan="2">Home</td>
                                <td>By Trained  birth attendant</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="liveBirthHomeByTrained" id="liveBirthHomeByTrained"/>
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td>By  untrained attendant</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="liveBirthHomeByUntrained" id="liveBirthHomeByUntrained"/>
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td colspan="2">UH&amp;FWC/MCWC/Clinic/Hospital</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="liveBirthHospital" id="liveBirthHospital"/>
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td colspan="2">Total</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="liveBirthTotal" id="liveBirthTotal" onfocus="sumByThreeParameter('liveBirthHomeByTrained','liveBirthHomeByUntrained','liveBirthHospital','liveBirthTotal','add');"/>
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td rowspan="8">
                                    # deaths
                                </td>
                                <td rowspan="3"># of  &lt;1 year child death</td>
                                <td>0-7  days</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="deathZeroToSeven" id="deathZeroToSeven"/>
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td>8-28  days</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="deathEightToTwentyEight" id="deathEightToTwentyEight"/>
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td>29  days -&lt;1 year</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="deathTwentyNineToOneYear" id="deathTwentyNineToOneYear"/>
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td colspan="2">Total</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="totalZeroToOneYear" id="totalZeroToOneYear" onfocus="sumByThreeParameter('deathZeroToSeven','deathEightToTwentyEight','deathTwentyNineToOneYear','totalZeroToOneYear','add');"/>
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td colspan="2"># of  1-5 year child death</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="deathOneToFiveYear" id="deathOneToFiveYear"/>
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td colspan="2"># of  death due to complicated pregnancy</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="deathForComplecatedPregnancy" id="deathForComplecatedPregnancy"/>
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td colspan="2"># of  other death</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="deathForOtherReason" id="deathForOtherReason"/>
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td colspan="2">Grand  total</td>
                                <td>
                                    <div class="row">
                                        <input type="hidden" name="dummy3" id="dummy3"/>
                                        <input type="hidden" name="dummy4" id="dummy4"/>
                                        <input type="text" value="" class="verysmall" name="grandTotal" id="grandTotal" onfocus="sumBySevenParameter('liveBirthTotal','totalZeroToOneYear','deathOneToFiveYear','deathForComplecatedPregnancy','deathForOtherReason','dummy3','dummy4','grandTotal','add');"/>
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td colspan="4">
                                    <div class="row buttons">
                                        <button type="button"><span>Save</span></button>
                                        <button type="button" onclick="MoveToStep(4,5,9);"><span>Save & Next</span></button>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <!--</form>-->
                    </div>

                    <div id="tab5" class="tabdiv">
                        <!--<form action="MISFormOne.jsp" method="post">-->
                        <table class="tableForm">
                            <tr>
                              <td># of total eligible couple</td>
                              <td>
                                  <div class="row">
                                        <input type="text" value="" class="verysmall"/>
                                  </div>
                              </td>
                            </tr>
                            <tr>
                              <td># of eligible couple visited this month</td>
                              <td>
                                  <div class="row">
                                    <input type="text" value="" class="verysmall"/>
                                  </div>
                              </td>
                            </tr>
                            <tr>
                              <td># of eligible couple visited last month</td>
                              <td>
                                  <div class="row">
                                    <input type="text" value="" class="verysmall"/>
                                  </div>
                              </td>
                            </tr>
                            <tr>
                              <td># of newlywed couple </td>
                              <td>
                                  <div class="row">
                                    <input type="text" value="" class="verysmall"/> 
                                  </div>
                              </td>
                            </tr>

                            <tr>
                                <td colspan="2">
                                    <div class="row buttons">
                                        <button type="button"><span>Save</span></button>
                                        <button type="button" onclick="MoveToStep(5,6,9);"><span>Save & Next</span></button>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <!--</form>-->
                    </div>

                    <div id="tab6" class="tabdiv">
						<!--<form action="MISFormOne.jsp" method="post">-->
                        <table class="tableForm">
                              <tr>
                                <td width="40%" colspan="2">&nbsp;</td>
                                <td width="15%" align="center" style="padding-left:3px">Oral Pill (Sukhi)<br />(Piece)</td>
                                <td width="15%" align="center">Condom (Nirapad)<br />(Piece)</td>
                                <td width="15%" align="center">Injectables (Depo provera)<br />(Vial)</td>
                                <td width="15%" align="center">ECP<br />(Dose)</td>
                              </tr>

                              <tr>
                                <td colspan="2">Opening  balance</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="openingBalancePill" id="openingBalancePill"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="openingBalanceCondom" id="openingBalanceCondom"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="openingBalanceInjectables" id="openingBalanceInjectables"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="openingBalanceECP" id="openingBalanceECP"/>
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td colspan="2">Received  this month (+)</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="receiveThisMonthPill" id="receiveThisMonthPill"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="receiveThisMonthCondom" id="receiveThisMonthCondom"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="receiveThisMonthInjectables" id="receiveThisMonthInjectables"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="receiveThisMonthECP" id="receiveThisMonthECP"/>
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td colspan="2">Balance  this month</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="balancePill" id="balancePill" onfocus="calculateIntegerValueByTwoParameter('openingBalancePill','receiveThisMonthPill','balancePill','add');"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="balanceCondom" id="balanceCondom" onfocus="calculateIntegerValueByTwoParameter('openingBalanceCondom','receiveThisMonthCondom','balanceCondom','add');"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="balanceInjectables" id="balanceInjectables" onfocus="calculateIntegerValueByTwoParameter('openingBalanceInjectables','receiveThisMonthInjectables','balanceInjectables','add');"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="balanceECP" id="balanceECP" onfocus="calculateIntegerValueByTwoParameter('openingBalanceECP','receiveThisMonthECP','balanceECP','add');"/>
                                    </div>
                                </td>
                              </tr>

                              <tr>
                                <td width="19%" rowspan="2">Adjustment</td>
                                <td width="14%">(+)</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="adjustmentPillPlus" id="adjustmentPillPlus"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="adjustmentCondomPlus" id="adjustmentCondomPlus"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="adjustmentInjectablesPlus" id="adjustmentInjectablesPlus"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="adjustmentECPPlus" id="adjustmentECPPlus"/>
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td>(-)</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="adjustmentPillMinus" id="adjustmentPillMinus"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="adjustmentCondomMinus" id="adjustmentCondomMinus"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="adjustmentInjectablesMinus" id="adjustmentInjectablesMinus"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="adjustmentECPMinus" id="adjustmentECPMinus"/>
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td colspan="2">Grand  total</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="grandTotalPill" id="grandTotalPill" onfocus="grandTotalThreeParameter('balancePill','adjustmentPillPlus','adjustmentPillMinus','grandTotalPill');"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="grandTotalCondom" id="grandTotalCondom" onfocus="grandTotalThreeParameter('balanceCondom','adjustmentPillPlus','adjustmentCondomPlus','grandTotalCondom');"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="grandTotalInjectables" id="grandTotalInjectables" onfocus="grandTotalThreeParameter('balanceInjectables','adjustmentInjectablesPlus','adjustmentInjectablesMinus','grandTotalInjectables');"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="grandTotalECP" id="grandTotalECP" onfocus="grandTotalThreeParameter('balanceECP','adjustmentECPPlus','adjustmentECPMinus','grandTotalECP');"/>
                                    </div>
                                </td>
                              </tr>
                              <tr>
                                <td colspan="2">Distributed  this month (-)</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="distributedPill" id="distributedPill"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="distributedCondom" id="distributedCondom"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="distributedInjectables" id="distributedInjectables"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="distributedECP" id="distributedECP"/>
                                    </div>
                                </td>
                              </tr>
							  <tr>
                                <td colspan="2">Closing balance</td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="closingBalancePill" id="closingBalancePill" onfocus="calculateIntegerValueByTwoParameter('grandTotalPill','distributedPill','closingBalancePill','subtract');"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="closingBalanceCondom" id="closingBalanceCondom" onfocus="calculateIntegerValueByTwoParameter('grandTotalCondom','distributedCondom','closingBalanceCondom','subtract');"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="closingBalanceInjectables" id="closingBalanceInjectables" onfocus="calculateIntegerValueByTwoParameter('grandTotalInjectables','distributedInjectables','closingBalanceInjectables','subtract');"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="verysmall" name="closingBalanceECP" id="closingBalanceECP" onfocus="calculateIntegerValueByTwoParameter('grandTotalECP','distributedECP','closingBalanceECP','subtract');"/>
                                    </div>
                                </td>
                              </tr>
							  <tr>
                                <td colspan="2">Reason  for stock out, if any (write code)</td>
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
                              </tr>
							  <tr>
                                <td colspan="2">Write  number of days in case stock out</td>
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
                              </tr>
                        </table>
						<br />
						<table width="100%" border="0" cellspacing="0" cellpadding="0" id="indicator">
                              <tr>
								<td colspan="13">
								<br />
								Stock out Code: <span class="box_room">A</span>&nbsp;Not received supply&nbsp;<span class="box_room">B</span>&nbsp;Inadequate supply&nbsp;<span class="box_room">C</span>&nbsp;Sudden demand increase&nbsp;<span class="box_room">D</span>&nbsp;Others<br /><br />
								  </td>
							  </tr>
                              <tr>
                                <td colspan="10">
                                    <div class="row buttons">
                                        <button type="button"><span>Save</span></button>
                                        <button type="button" onclick="MoveToStep(6,7,9);"><span>Save & Next</span></button>
                                    </div>
                                </td>
                            </tr>
                        </table>

                        <!--</form>-->
					</div>

                    <div id="tab7" class="tabdiv">
						<table class="tableForm">
                              <tr>
                                <td width="7%" rowspan="2" height="400"><div class="rotate1"># of household with 0-5 years child visited in working area*</div></td>
                                <td width="7%" rowspan="2"align="center"><div class="rotate1"># of household with pregnant woman visited in working area*</div></td>
                                <td width="7%" rowspan="2"align="center"><div class="rotate1"># of household visited</div></td>
                                <td width="7%" rowspan="2"align="center"><div class="rotate1"># of household received information on ECD</div></td>
                                <td colspan="4" align="center">Information  of household (# of pregnant woman and child in visited household)</td>
                                <td colspan="6" align="center"># of  client received information on ECD from trained workers</td>
                              </tr>
                              <tr>
                                <td width="7%" align="center" height="200"><div class="rotate1"># of pregnant woman</div></td>
                                <td width="7%" align="center"><div class="rotate1"># of 0-12 months child</div></td>
                                <td width="7%" align="center"><div class="rotate1"># of 13-36 months child</div></td>
                                <td width="7%" align="center"><div class="rotate1"># of 37-60 months child</div></td>
                                <td width="7%" align="center"><div class="rotate1">Pregnant woman</div></td>
								<td width="7%" align="center"><div class="rotate1">Month of child</div></td>
                                <td width="7%" align="center"><div class="rotate1">Father of Child</div></td>
                                <td width="7%" align="center"><div class="rotate1">Brother/sister (above 10 years)</div></td>
                                <td width="7%" align="center"><div class="rotate1">Grandfather/grandmother</div></td>
                                <td width="7%" align="center"><div class="rotate1">Other member of the family</div></td>
                              </tr>

                              <tr>
                                <td><div class="row">
                                        <input type="text" value="" class="smallest" />
                                    </div></td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="smallest" />
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="smallest" />
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="smallest" />
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="smallest" />
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="smallest" />
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="smallest" />
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="smallest" />
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="smallest" />
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="smallest" />
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="smallest" />
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="smallest" />
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="smallest" />
                                    </div>
                                </td>
                                <td>
                                    <div class="row">
                                        <input type="text" value="" class="smallest" />
                                    </div>
                                </td>
                              </tr>
							  <tr>
                                <td colspan="14">* Working areas means those FWA and HA who received training on ECD.</td>
                            </tr>
							<tr>
                                <td colspan="14">&nbsp;</td>
                            </tr>

							 <tr>
                                <td colspan="14">
                                    <div class="row buttons">
                                        <button type="button"><span>Save</span></button>
                                        <button type="button" onclick="MoveToStep(7,8,9);"><span>Save & Next</span></button>
                                    </div>
                                </td>
                            </tr>
                        </table>
					</div>
					
					<div id="tab8" class="tabdiv">
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
                                <td colspan="6">
									<div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>								</td>
                              </tr>
                              <tr>
                                <td colspan="5" align="left" style="padding-left:3px"><strong># of Non-lactating Mother/Caretaker </strong></td>
                                <td colspan="6">
									<div class="row">
                                        <input type="text" value="" class="verysmall" />
                                    </div>								</td>
                              </tr>
                              <tr>
                                <td colspan="5" style="padding-left:3px"><strong>#  of live birth</strong></td>
                                <td colspan="6">
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
                                        <button type="button" name="save"><span>Save</span></button>
                                        <button type="button" name="next" onclick="MoveToStep(8,9,9);"><span>Save & Next</span></button>
                                    </div>
                                </td>
                            </tr>
                        </table>
						<!--</form>-->
		      </div>
					
					
					
					<div id="tab9" class="tabdiv">
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
                                        <button type="button" name="save"><span>Save</span></button>
                                        <button type="button" name="next" onclick="MoveToStep(9,1,9);"><span>Save & Next</span></button>
                                    </div>
                                </td>
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