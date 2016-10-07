/*  Show and hide the menu sections: In the onClick="showHideSwitch('menuID')" the menuID is passed in. It then gives hide/show class */
function showHideSwitch(element) { 
	if (document.getElementById(element).className=='showSwitch') { 
			document.getElementById(element).className='hideSwitch'; 
	}else if (document.getElementById(element).className='hideSwitch') { 
			document.getElementById(element).className='showSwitch'; 
	} 
} 
