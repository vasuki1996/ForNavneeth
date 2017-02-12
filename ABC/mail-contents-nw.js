browserName = navigator.appName;
browserVer = parseInt(navigator.appVersion);
condition = !(( (browserName.indexOf("Explorer") >=0 ) && (browserVer < 4) ) ||  ((browserName.indexOf("Netscape") >=0 ) && (browserVer < 2) ) ) ;
if (condition == true  )
    CanAnimate = true;
else
    CanAnimate = false;

function openchild(thisurl){
if ( CanAnimate ){
        msgWindow=window.open( '' ,'subwindow','toolbar=no,location=no,directories=no,status=yes,scrollbars=yes,menubar=no,resizable=yes,width=635,height=260');
        msgWindow.focus();
        msgWindow.location.href = thisurl;
}
else {
        msgWindow=window.open( thisurl,'subwindow','toolbar=no,location=no,directories=no,status=yes,scrollbars=yes,menubar=no,resizable=yes,width=635,height=260');
}
}