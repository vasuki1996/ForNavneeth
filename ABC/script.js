function validateit(theForm) {
	if (!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,4})+$/.test(theForm.email.value)))
	{
		alert("Invalid Email ID. Kindly enter the correct ID.");
		theForm.email.focus();
		return (false);
	}
}

function checkData1 ()
{
	if (document.form2.ss.value.length < 3){
	    alert("Enter at least three characters for search."); 
	    document.form2.ss.focus();
	    return false;
	}
	else{
		return true;
	}

}

function checkData ()
{
	if (document.form1.ss.value.length < 3){
	    alert("Enter at least three characters for search."); 
	    document.form1.ss.focus();
	    return false;
	}
	else{
		return true;
	}

}


function getblank(this1)  {
	if (this1.value == "Your e-mail here") {
		this1.value = "";
	}
	return true;	
}


function convert()

{
var loc = document.location.toString();
loc = loc.substring(7,loc.length);
var idx;
idx = document.trans.langpair.selectedIndex;
if (idx<=0) 
{
alert("Please select a language.");
return false;
}
else{
window.open('http://translate.google.com/translate_c?langpair=' + document.trans.langpair.options[idx].value + "&u=" + document.location,"new_trans");
return false;
}
}