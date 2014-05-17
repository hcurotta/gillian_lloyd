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
//= require bootstrap.min
//= require_tree .

function init_map(){
	var myOptions = {zoom:16,
									 center:new google.maps.LatLng(-33.87058,151.22336100000007),
									 mapTypeId: google.maps.MapTypeId.ROADMAP};
	map = new google.maps.Map(document.getElementById("gmap_canvas"), myOptions);
	marker = new google.maps.Marker({map: map,
																	 position: new google.maps.LatLng(-33.87058, 151.22336100000007)});

	infowindow = new google.maps.InfoWindow({content:"<div style='position:relative;line-height:1.34;overflow:hidden;white-space:nowrap;display:block;'><div style='margin-bottom:2px;font-weight:500;'>Gillian Lloyd's Practice</div><span>90 Victoria St <br>  Potts Point</span></div>" });
	google.maps.event.addListener(marker, "click", function(){infowindow.open(map,marker);});

	infowindow.open(map,marker);
}

google.maps.event.addDomListener(window, 'load', init_map);


$(document).ready(function(){
	$("#sticky_nav").sticky({topSpacing: 0, center: true});

	var offset = 40;

	$('.nav li a').click(function(event) {
	    event.preventDefault();
	    $($(this).attr('href'))[0].scrollIntoView();
	    scrollBy(0, -offset);
	});

});
