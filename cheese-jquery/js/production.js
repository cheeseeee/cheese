/*
* @Author: 靳振国
* @Date:   2017-10-16 08:55:31
* @Last Modified by:   靳振国
* @Last Modified time: 2017-10-19 14:40:04
*/
$(function(){
	let page = $('.main');
	let lis = $('.main>li');
	let imgs = $('.main>li').width();
	console.log(imgs)
	let next = now = 0;
	let t = setInterval(move, 10000);
	let ii = $('.ii-share');

	let flag = true;
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
	$('.i-share').on('mouseenter',function(){
		ii.stop();
		ii.css('display','block').animate({top:30});
	})
	$('.i-share').on('mouseleave',function(){
		ii.stop();
		ii.css('display','none').animate({top:0});
	})
})