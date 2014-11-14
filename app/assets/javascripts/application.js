// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require semantic-ui
//= require turbolinks
//= require_tree .

$(function(){
	$('.field input').popup({
		on: 'focus'
	});
	$('#Logout').popup();
	$('.ui.selection.dropdown').dropdown();
	$('a.preview').on('click', function(e) {
		e.preventDefault();
		var url = $(this).attr('href');
		$(".modal-dialog").html('<iframe width="100%" height:"100%" frameborder="0"  scrolling="no" allowtransparency="true" src="'+url+'"></iframe>');
	});
});
$(window).bind('page:change',function(){
	$('a.preview').on('click', function(e) {
		e.preventDefault();
		var url = $(this).attr('href');
		$(".modal-dialog").html('<iframe width="100%" height:"100%" frameborder="0"  scrolling="no" allowtransparency="true" src="'+url+'"></iframe>');
	});
});
