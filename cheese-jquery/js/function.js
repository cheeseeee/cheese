/*
* @Author: 靳振国
* @Date:   2017-09-19 15:56:45
* @Last Modified by:   靳振国
* @Last Modified time: 2017-09-25 17:04:47
*/

function getClass(classname,ranger){
		ranger=ranger||document;
	if(ranger.getElementsByClassName){
	  return ranger.getElementsByClassName(classname);
	}else{
		var newarr=[];
	    var all=ranger.getElementsByTagName("*");
	    for(var i=0;i<all.length;i++){
		// if(all[i].className==className){
		// 	newarr.push(all[i])
		// }
		// 
		if(checkClass(all[i].className,className)){
			newarr.push(all[i])
		}
	}
}
return newarr ;
}
function checkClass(className,classname){	
		var arr=className.split('');
		
			if(arr.includes(classname)){
               return true;
			
		}
		return false;
}

   //$('.box')[0].innerHTML="这次的"
	function $(select,ranger){
		if(typeof select=="string"){
		ranger=ranger||document;
		var first=select.charAt(0);
		if(first=='.'){
			return getClass(select.substring(1))
		}else if(first=='#'){
			return ranger.getElementById(select.substring(1))
		}else if(/^[a-z][a-z1-6]{1,7}$/){
			return ranger.getElementsByTagName(select)
		}
	}else if(typeof select=="function"){
		window.addEventListener("load", select)
	}	
		}