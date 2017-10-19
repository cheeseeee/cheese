/*
* @Author: 靳振国
* @Date:   2017-10-06 13:13:03
* @Last Modified by:   靳振国
* @Last Modified time: 2017-10-19 15:15:53
*/

$(function(){
	let lis = $('.banner-list>li');
	let imgs = lis.width();
	let now = next = 0;
	let flag = true;
	let t = setInterval(move, 3000);

	function move(){
		$('.arrows-right').triggerHandler('click');
	}

	$('.arrows-right').on('click',function(){
		next++;
		if(next == lis.length){
			next = 0;
		}
		lis.eq(next).css('left',imgs);
		lis.eq(now).animate({left:-imgs});
		lis.eq(next).animate({left:0},function(){
			flag = true;
		});
		now = next;
	})

	$('.arrows-left').on('click',function(){
	next--;
		if(next < 0){
			next = lis.length-1;
		}
		lis.eq(next).css('left',-imgs);
		lis.eq(now).animate({left:imgs});
		lis.eq(next).animate({left:0},function(){
			flag = true;
		});
		now = next;
	})
})

window.onload = function(){
	
	// let num = document.querySelector('.circle-num>h2');

	let ban = $('.banner-list')[0];
	let bann = $('li',ban);
	 //let arrLeft = $('.arrows-left');
	let arrRight = $('.arrows-right');
	// let imgs = parseInt(window.getComputedStyle(bann,null).width);
	let imgs = 1138;
	let next = 0;
	let now = 0;
	let t;

}

window.onscroll = function(){
	let topp = document.querySelector('.top');
	let menu = 	$('.menu')[0];
	let menuli = $('li',menu);
	let topHight = 0;
	var flagg = false;
	var a =  0 , b = 0, c = 0 , d = 0;

	if(document.documentElement&&document.documentElement.scrollTop){ 
	topHight=document.documentElement.scrollTop; 
	}else if(document.body){ 
	topHight=document.body.scrollTop; 
	} 
	if(flagg == false){
		flagg = true;
	}
	if(topHight == 0){
		topp.style.width = 1138 + 'px';
		topp.style.height = 58 + 'px';
		topp.style.position = 'fixed';
		topp.style.zIndex = 99999;
		topp.style.top = 110 + 'px';
		topp.style.left = 0;
		topp.style.right = 0;
		topp.style.margin = '0 auto';
		topp.style.background = 'rgba(0,0,0,0)';
	}else{
		topp.style.position = 'fixed';
		topp.style.width = '100%';
		topp.style.transition = 'all 0.6s';
		topp.style.background = 'rgba(0,0,0,0.3)';
		topp.style.top = 0;
		topp.style.left = 0;
	}
	if(topHight >= 0 && topHight < 700){
		menuli[0].style.color = '#e74c3c';
		menuli[1].style.color = '#fff';
		menuli[2].style.color = '#fff';
		menuli[3].style.color = '#fff';
		menuli[4].style.color = '#fff';
	}
	if(topHight >= 700 && topHight < 1900){
		menuli[0].style.color = '#fff';
		menuli[1].style.color = '#e74c3c';
		menuli[2].style.color = '#fff';
		menuli[3].style.color = '#fff';
		menuli[4].style.color = '#fff';
	}
	if(topHight >= 1900 && topHight < 2600){
		menuli[0].style.color = '#fff';
		menuli[1].style.color = '#fff';
		menuli[2].style.color = '#e74c3c';
		menuli[3].style.color = '#fff';
		menuli[4].style.color = '#fff';
	}
	if(topHight >= 2600 && topHight < 4547){
		menuli[0].style.color = '#fff';
		menuli[1].style.color = '#fff';
		menuli[2].style.color = '#fff';
		menuli[3].style.color = '#e74c3c';
		menuli[4].style.color = '#fff';
		setInterval(function(){
           a++;
           b++;
           c++;
           d++;
		document.getElementById('h_1').innerText = a;
		document.getElementById('h_2').innerText = b;
		document.getElementById('h_3').innerText = c;
		document.getElementById('h_4').innerText = d;
        if(a >= 893){
			a = 893;
		};
		if(b >= 218){
			b = 218;
		};
		if(c >= 810){
			c = 810;
		};
		if(d >= 1130){
			d = 1130;
		};
		
		}, 5)
	}
	if(topHight >= 4547){
		menuli[4].style.color = '#e74c3c';
		menuli[1].style.color = '#fff';
		menuli[2].style.color = '#fff';
		menuli[3].style.color = '#fff';
		menuli[0].style.color = '#fff';
	}
/*menuli.forEach((element,index)=>{
	element.onclick = function(){
		let menulist = [0,700,1900,2600,4547];
		for(let i=0;i<menulist.length;i++){
			element[index].scrollTop = menulist[i];
	}
		}
});
	console.log(topHight);*/
}
