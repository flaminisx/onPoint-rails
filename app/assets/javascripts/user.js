/* # Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/ */
$(document).ready(function(){
	$(".quests li").click(function(e){
		//console.log($(e.target).parent("li"));
		var id = $(e.target).parents("li").attr('id');
		if(id) location.href = "/quest/"+id;
	});
})