function MoveToStep(sourceStep, destinationStep, stepCount) {
//        alert("Test 00:");
        for (i = 1; i <= stepCount; i++){
                $('#tab' + i).hide();
        }
//        alert("Test:");
        $('#tab' + destinationStep).show();

        $('#litab' + sourceStep ).css('background-image','url(../gfx/tabs-title-off.gif)');
        $('#litab' + sourceStep ).css('padding','6px 20px 0');
        $('#litab' + sourceStep ).css('background-position','left top');
        $('#litab' + sourceStep ).css('background-repeat','repeat-x');
        $('#litab' + sourceStep ).css('font-weight','normal');
        $('#litab' + sourceStep ).css('color','#E0C4A3');

        $('#litab' + destinationStep ).css('background-image','url(../gfx/tabs-title-on.gif)');
        $('#litab' + destinationStep ).css('color','lightgreen');
        $('#litab' + destinationStep ).css('font-weight','bold');

//        $('html, body').animate({ scrollTop: 0 }, 'slow');
    }


function calculateIntegerValueByTwoParameter(param1, param2, resultDiv, calType){
    var paramValue1 = document.getElementById(param1).value ;
    var paramValue2 = document.getElementById(param2).value ;

    if( calType!='' && calType!=null ){

        if( paramValue1=='' || paramValue1==null ){
            paramValue1 = 0;
        }else{
             if(  isNaN( parseInt( paramValue1) ) ){
                alert("Please provide valid number");
                return;
             }
        }
        if( paramValue2=='' || paramValue2==null ){
            paramValue2 = 0;
        }else{
             if(  isNaN( parseInt( paramValue2) ) ){
                alert("Please provide valid number");
                return;
             }
        }

        if(calType=='add')
            document.getElementById(resultDiv).value = parseInt( paramValue1 ) + parseInt( paramValue2);
        else if(calType=='subtract')
            document.getElementById(resultDiv).value = parseInt( paramValue1 ) - parseInt( paramValue2 );
        else if(calType=='mul')
            document.getElementById(resultDiv).value = parseInt( paramValue1 ) * parseInt( paramValue2 );
    }
}

function sumByThreeParameter(param1, param2, param3, resultDiv ){
    var paramValue1 = document.getElementById(param1).value ;
    var paramValue2 = document.getElementById(param2).value ;
    var paramValue3 = document.getElementById(param3).value ;

    if( paramValue1=='' || paramValue1==null ){
        paramValue1 = 0;
    }else{
         if(  isNaN( parseInt( paramValue1) ) ){
            alert("Please provide valid number");
            return;
         }
    }

    if( paramValue2=='' || paramValue2==null ){
        paramValue2 = 0;
    }else{
         if(  isNaN( parseInt( paramValue2) ) ){
            alert("Please provide valid number");
            return;
         }
    }

    if( paramValue3=='' || paramValue3==null ){
        paramValue3 = 0;
    }else{
         if(  isNaN( parseInt( paramValue3) ) ){
            alert("Please provide valid number");
            return;
         }
    }

    document.getElementById(resultDiv).value = parseInt( paramValue1 ) + parseInt( paramValue2 ) + parseInt( paramValue3 );

} 


function sumBySevenParameter(param1, param2, param3, param4,param5,param6,param7,resultDiv ){
    var paramValue1 = document.getElementById(param1).value ;
    var paramValue2 = document.getElementById(param2).value ;
    var paramValue3 = document.getElementById(param3).value ;

    var paramValue4 = document.getElementById(param4).value ;
    var paramValue5 = document.getElementById(param5).value ;
    var paramValue6 = document.getElementById(param6).value ;
    var paramValue7 = document.getElementById(param7).value ;


    if( paramValue1=='' || paramValue1==null ){
        paramValue1 = 0;
    }else{
         if(  isNaN( parseInt( paramValue1) ) ){
            alert("Please provide valid number");
            return;
         }
    }

    if( paramValue2=='' || paramValue2==null ){
        paramValue2 = 0;
    }else{
         if(  isNaN( parseInt( paramValue2) ) ){
            alert("Please provide valid number");
            return;
         }
    }

    if( paramValue3=='' || paramValue3==null ){
        paramValue3 = 0;
    }else{
         if(  isNaN( parseInt( paramValue3) ) ){
            alert("Please provide valid number");
            return;
         }
    }

    if( paramValue4=='' || paramValue4==null ){
        paramValue4 = 0;
    }else{
         if(  isNaN( parseInt( paramValue4) ) ){
            alert("Please provide valid number");
            return;
         }
    }

    if( paramValue5=='' || paramValue5==null ){
        paramValue5 = 0;
    }else{
         if(  isNaN( parseInt( paramValue5) ) ){
            alert("Please provide valid number");
            return;
         }
    }

    if( paramValue6=='' || paramValue6==null ){
        paramValue6 = 0;
    }else{
         if(  isNaN( parseInt( paramValue6) ) ){
            alert("Please provide valid number");
            return;
         }
    }

    if( paramValue7=='' || paramValue7==null ){
        paramValue7 = 0;
    }else{
         if(  isNaN( parseInt( paramValue7) ) ){
            alert("Please provide valid number");
            return;
         }
    }


    document.getElementById(resultDiv).value = parseInt( paramValue1 ) + parseInt( paramValue2 ) + parseInt( paramValue3 ) + parseInt( paramValue4 )+ parseInt( paramValue5 )+ parseInt( paramValue6 )+ parseInt( paramValue7 );

}

function grandTotalThreeParameter(param1, param2, param3Minus, resultDiv ){
    var paramValue1 = document.getElementById(param1).value ;
    var paramValue2 = document.getElementById(param2).value ;
    var paramValue3 = document.getElementById(param3Minus).value ;

    if( paramValue1=='' || paramValue1==null ){
        paramValue1 = 0;
    }else{
         if(  isNaN( parseInt( paramValue1) ) ){
            alert("Please provide valid number");
            return;
         }
    }

    if( paramValue2=='' || paramValue2==null ){
        paramValue2 = 0;
    }else{
         if(  isNaN( parseInt( paramValue2) ) ){
            alert("Please provide valid number");
            return;
         }
    }

    if( paramValue3=='' || paramValue3==null ){
        paramValue3 = 0;
    }else{
         if(  isNaN( parseInt( paramValue3) ) ){
            alert("Please provide valid number");
            return;
         }
    }
    
    document.getElementById(resultDiv).value = ( parseInt( paramValue1 ) + parseInt( paramValue2 ) ) - parseInt( paramValue3 );
}


function calculateTotalAcceptor(){
    var totalValue = 0;
    var paramValue = 0;
    var eligibleCouple = 0;
    
    paramValue = document.getElementById("oralpill_old").value;
    if( paramValue=='' || paramValue==null ) paramValue = 0;
    totalValue += parseInt(paramValue);

    paramValue = document.getElementById("oralpill_new").value;
    if( paramValue=='' || paramValue==null ) paramValue = 0;
    totalValue += parseInt(paramValue);

    paramValue = document.getElementById("condom_old").value;
    if( paramValue=='' || paramValue==null ) paramValue = 0;
    totalValue += parseInt(paramValue);

    paramValue = document.getElementById("condom_new").value;
    if( paramValue=='' || paramValue==null ) paramValue = 0;
    totalValue += parseInt(paramValue);

    paramValue = document.getElementById("inject_new").value;
    if( paramValue=='' || paramValue==null ) paramValue = 0;
    totalValue += parseInt(paramValue);

    paramValue = document.getElementById("inject_old").value;
    if( paramValue=='' || paramValue==null ) paramValue = 0;
    totalValue += parseInt(paramValue);

    paramValue = document.getElementById("iud_old").value;
    if( paramValue=='' || paramValue==null ) paramValue = 0;
    totalValue += parseInt(paramValue);

    paramValue = document.getElementById("iud_new").value;
    if( paramValue=='' || paramValue==null ) paramValue = 0;
    totalValue += parseInt(paramValue);

    paramValue = document.getElementById("implant_old").value;
    if( paramValue=='' || paramValue==null ) paramValue = 0;
    totalValue += parseInt(paramValue);

    paramValue = document.getElementById("implant_new").value;
    if( paramValue=='' || paramValue==null ) paramValue = 0;
    totalValue += parseInt(paramValue);

    paramValue = document.getElementById("male_old").value;
    if( paramValue=='' || paramValue==null ) paramValue = 0;
    totalValue += parseInt(paramValue);

    paramValue = document.getElementById("male_new").value;
    if( paramValue=='' || paramValue==null ) paramValue = 0;
    totalValue += parseInt(paramValue);

    paramValue = document.getElementById("female_old").value;
    if( paramValue=='' || paramValue==null ) paramValue = 0;
    totalValue += parseInt(paramValue);

    paramValue = document.getElementById("female_new").value;
    if( paramValue=='' || paramValue==null ) paramValue = 0;
    totalValue += parseInt(paramValue);


    eligibleCouple = document.getElementById("eligible_couple").value;
    if( eligibleCouple=='' || eligibleCouple==null ) eligibleCouple = 1;
    eligibleCouple = (parseInt(totalValue)/parseInt(eligibleCouple))*100;

    document.getElementById("total_acceptor").value = totalValue;
    document.getElementById("car").value = eligibleCouple.toFixed(2);
}


function calculateTotalNSV(){
    var totalValue = 0;
    var paramValue = 0;
    
    paramValue = document.getElementById("others_nsv1").value;
    if( paramValue=='' || paramValue==null ) paramValue = 0;
    totalValue += parseInt(paramValue);

    paramValue = document.getElementById("others_nsv2").value;
    if( paramValue=='' || paramValue==null ) paramValue = 0;
    totalValue += parseInt(paramValue);

    paramValue = document.getElementById("others_nsv3").value;
    if( paramValue=='' || paramValue==null ) paramValue = 0;
    totalValue += parseInt(paramValue);

    paramValue = document.getElementById("others_nsv4").value;
    if( paramValue=='' || paramValue==null ) paramValue = 0;
    totalValue += parseInt(paramValue);

    document.getElementById("others_nsv_total").value = totalValue;
	
}


function setUpazilaList(chosen) {

        var selbox = document.masterinfo.upazila;
        selbox.options.length = 0;

        var selbox2 = document.masterinfo.union;
        selbox2.options.length = 0;

        if (chosen == "") {
          selbox.options[selbox.options.length] = new Option('Select upazila','');
          selbox2.options[selbox2.options.length] = new Option('Select union','');
       }

        else if (chosen == "Mymensingh") {
          selbox.options[0] = new Option('Select upazila','');
          selbox.options[1] = new Option('Trishal Upazilla','Trishal Upazilla');
          selbox.options[2] = new Option('Fulbaria Upazilla','Fulbaria Upazilla');
          selbox2.options[0] = new Option('Select union','');
        }
        else if (chosen == "Gazipur") {
          selbox.options[0] = new Option('Select upazila','');
          selbox.options[1] = new Option('Sreepur Upazilla','Sreepur Upazilla');
          selbox.options[2] = new Option('Kapasia Upazilla','Kapasia Upazilla');
          selbox2.options[0] = new Option('Select union','');
        }

    }


function setUnionList(chosen) {

        var selbox = document.masterinfo.union;
        selbox.options.length = 0;

        if (chosen == "") {
          selbox.options[selbox.options.length] = new Option('Select union','');
       }

        else if (chosen == "Trishal Upazilla") {
          selbox.options[0] = new Option('Select union','');
          selbox.options[1] = new Option('Trishal Union Parishad','Trishal Union Parishad');
          selbox.options[2] = new Option('Dhanikhola Union Parishad','Dhanikhola Union Parishad');
        }
        else if (chosen == "Fulbaria Upazilla") {
          selbox.options[0] = new Option('Select union','');
          selbox.options[1] = new Option('Fulbaria Union Parishad','Fulbaria Union Parishad');
          selbox.options[2] = new Option('Bhabanipur Union Parishad','Bhabanipur Union Parishad');
        }
        else if (chosen == "Sreepur Upazilla") {
          selbox.options[0] = new Option('Select union','');
          selbox.options[1] = new Option('Barmi Union Parishad','Barmi Union Parishad');
          selbox.options[2] = new Option('Gazipur Union Parishad','Gazipur Union Parishad');
        }
        else if (chosen == "Kapasia Upazilla") {
          selbox.options[0] = new Option('Select union','');
          selbox.options[1] = new Option('Barishab Union Parishad','Barishab Union Parishad');
          selbox.options[2] = new Option('Chandpur Union Parishad','Chandpur Union Parishad');
        }

    }
	
	
function calculateCommodityInformationClosingBalance( param1, param2, param3, param4, resultDiv ){
    
	var paramValue1 = document.getElementById(param1).value ;
    var paramValue2 = document.getElementById(param2).value ;
    var paramValue3 = document.getElementById(param3).value ;
    var paramValue4 = document.getElementById(param4).value ;

    if( paramValue1=='' || paramValue1==null ){
        paramValue1 = 0;
    }else{
         if(  isNaN( parseInt( paramValue1) ) ){
            alert("Please provide valid number");
            return;
         }
    }

    if( paramValue2=='' || paramValue2==null ){
        paramValue2 = 0;
    }else{
         if(  isNaN( parseInt( paramValue2) ) ){
            alert("Please provide valid number");
            return;
         }
    }

    if( paramValue3=='' || paramValue3==null ){
        paramValue3 = 0;
    }else{
         if(  isNaN( parseInt( paramValue3) ) ){
            alert("Please provide valid number");
            return;
         }
    }

    if( paramValue4=='' || paramValue4==null ){
        paramValue4 = 0;
    }else{
         if(  isNaN( parseInt( paramValue4) ) ){
            alert("Please provide valid number");
            return;
         }
    }

    document.getElementById(resultDiv).value = parseInt( paramValue1 ) + parseInt( paramValue2 ) - parseInt( paramValue3 ) - parseInt( paramValue4 );

}
