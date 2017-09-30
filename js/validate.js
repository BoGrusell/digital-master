/**
	validate.js
*/
function validateForm(form) {
	
	var validation = true;
	$('.mess').hide();
	$('#' + form + ' input').each( 
		
		function(index){  
			var input = $(this);
			$('#' + input.attr('name')).removeClass("uk-form-danger");
			if (input.attr('require') == 'yes') {
				if (input.val().length == 0) {
					validation = false;
					$('#' + input.attr('name')).addClass("uk-form-danger");
					$('#member-mes-' + $(this).attr('name')).show();
				}
			}
			if (input.attr('email') == 'yes') {
				if (checkEmail(input.val()) == false) {
					validation = false;
					$('#' + input.attr('name')).addClass("uk-form-danger");
					$('#member-mes-' + $(this).attr('name')).show();
				}
			}
			if (input.attr('personnr') == 'yes') {
				if (personnr(input.val()) == false) {
					validation = false;
					UIkit.modal.alert("Felaktigt Personnr");
					//$('#' + input.attr('name')).addClass("uk-form-danger");
					$('#member-mes-' + $(this).attr('name')).show();
				}
			}
			if (input.attr('orgnr') == 'yes') {
				if (input.val().length < 10) {
					validation = false;
					$('#member-mes-' + $(this).attr('name')).show();
					$('#' + input.attr('name')).addClass("uk-form-danger");
				}
			}
			if (input.attr('zxcv') == 'yes') {
				var zxcv = input.val();
				if (zxcv.length < 6 ) {
					validation = false;
					$('#member-mes-' + $(this).attr('name')).text("Lösenorden mäste minst vara 6 tecken");
					$('#member-mes-' + $(this).attr('name')).show();
					$('#' + input.attr('name')).addClass("uk-form-danger");
				} else 
				if (input.val() != $('#zxcv-confirm').val()) {
					validation = false;
					$('#member-mes-' + $(this).attr('name')).text("Lösenorden matchar inte");
					$('#member-mes-' + $(this).attr('name')).show();
					$('#' + input.attr('name')).addClass("uk-form-danger");
				}
			}
			zxcv
			
		}
	);
	return validation;
}

function personnr(pnr){
	var ftal;
	var sista;

	//re1=/^(\d{2})(\d{6})-(\d{4})$/;
	re1=/^(\d{6})-(\d{4})$/;
	re2=/^(\d{6})(\d{4})$/;
	century = "";
	
	if(re1.test(pnr)){
		//century=pnr.replace(re1 , "$1");
		ftal=pnr.replace(re1 , "$1");
		sista=pnr.replace(re1 , "$2");
	}
	else if(re2.test(pnr)){
		//century=pnr.replace(re2 , "$1");
		ftal=pnr.replace(re2 , "$1");
		sista=pnr.replace(re2 , "$2");
	}
	else{
		return false;
	}
	//Kontrollera om kontrollsiffran stämmer
	if (pernr(ftal,sista)){
		return century+ftal+"-"+sista;
	} else{return false;}
}

function pernr(ftal, sista){
	var sum=0;
	var tal;

	//Kontrollsiffran sätts till den
	//sista siffran i "sista"

	var kontrollSiffra=sista%10;
	var rest;
	var i;

	rest=100000;

	//loopar igenom födelsetalet

	for(i=1;i<=6;i++){
		//tal får värdet av den i:te siffran
		//i födelsetalet
		tal=(ftal/rest)%10;
		temp_tal=parseInt(tal);
		tal=temp_tal;

		 //till sum läggs siffersumman av tal 
		 //multiplicerat med 1 eller 2, 
		 //beroende på position
		sum+=siffersumma(tal*(1+i%2));
		rest/=10;
	}
	rest=1000;

	 //loopar igenom tre första siffrorna
	 //bland de fyra sista siffrorna

	for(i=1;i<4;i++){
		tal=(sista/rest)%10;
		temp_tal=parseInt(tal);
		tal=temp_tal;
		sum+=siffersumma(tal*(1+i%2));
		rest/=10;

		temp_sum=parseInt(sum);
		sum=temp_sum;
	}

	 //sum sätts till differensen mellan
	 //sum och närmast större 10-tal

	if (sum%10){
		temp_sum=parseInt(sum/10+1);
		sum=temp_sum*10-sum;
	}
	else	{
		sum=0;
	}

	 //om sum stämmer överens med
	 //kontrollsiffra returneras 1,
	 //annars 0

	return (sum==kontrollSiffra);
}

function siffersumma(tal){
	var summa=0;
	while(tal>=1){
		temp_tal=parseInt(tal);
		tal=temp_tal;
		summa=summa+tal%10;
		temp_summa=parseInt(summa);
		summa=temp_summa;
		tal=tal/10;
	}
	return summa;
}


function checkEmail(email) 
{
    var re = /\S+@\S+\.\S+/;
    return re.test(email);
}

