function noBack()
{
	window.history.forward();
}

noBack();
//onload=noBack;

window.onpageshow=function(evt){if(evt.persisted)noBack()}

window.onunload=function(){void(0)}