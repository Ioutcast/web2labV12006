function setCenter(){
	let top=$(window).scrollTop();
	let left=(window.innerWidth-$('#MessageBox').width())/2+$(document).scrollLeft();
	$('#MessageBox').css('position','absolute')
		.css({'top':top+'px','left':left+'px'});
}
function showMessageBox(text){
    
	if($('#MessageBox').length===0){
		addMessageBox();
	}   
    /* позиционируем блок по центру */
	setCenter();
	/* назначаем обработчик для события scroll */
	$(window).bind('scroll',setCenter);
	/* автоматически убираем блок через 1 секунду */
	window.setTimeout(function(){
		$('#MessageBox').fadeOut('slow');
		$(window).unbind('scroll',setCenter);
    },1000);
    $('#MessageBox').text(text).show();
   
}
function addMessageBox(){
    $('<div></div>')
	/* присваиваем блоку уникальный ID */
    .attr('id','MessageBox')
    /* определяем внешний вид (в рабочем варианте это лучше сделать во внешнем css файле) */
    .css({'border':'1px solid #ccc','padding':'5px 10px','background':'#fff'})
    /* не показываем пока нет надобности */
    .hide()
    /* добавляем на сайт */
    .appendTo('body');
    }

  