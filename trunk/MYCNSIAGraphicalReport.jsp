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

<!--[if IE]><script language="javascript" type="text/javascript" src="/js/flot/excanvas.pack.js"></script><![endif]-->
<script language="javascript" type="text/javascript" src="/js/flot/jquery.js"></script>
<script language="javascript" type="text/javascript" src="/js/flot/jquery.flot.pie.pack.js"></script>

    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
        <script type="text/javascript">
          google.load("visualization", "1", {packages:["corechart"]});
          google.setOnLoadCallback(drawChart);
          function drawChart() {
            var data = new google.visualization.DataTable();
            data.addColumn('string', 'MYCNSIA');
            data.addColumn('number', 'Total per Month');
            data.addRows([
              ['Exclusive breastfeeding under six months',    11],
              ['Early initiation of breastfeeding',      2]

            ]);

            var options = {
              width: 650, height: 300,
              title: 'MYCNSIA Report'
            };

            var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
            chart.draw(data, options);
          }
        </script>


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
					<h2>MYCNSIA Report</h2>
				</div>

                <!--<div class="content tabs">-->
                <html:form action="/MYCNSIAReport?reqCode=promtMycnsiaReport" method="post">
                  <div class="masterinfo" style="margin-top:10px;">
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

                  <div class="masterinfo">
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
                                <td>
                                    <div class="row buttons">
                                        <button type="button"><span>Search</span></button>
                                    </div>
                                </td>
                            </tr>
                        </table>
                  </div>
                  </html:form>

                <div id="chart_div"></div>


                </div>
            <!--</div>-->
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