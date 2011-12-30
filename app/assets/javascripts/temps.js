jQuery(function() {
    var dataArr = new Array();
    if ($('#content').length) {
	jQuery.ajax({
	url: 'temps/data.json',
	type: 'GET',
	dataType: 'text',
	success: function(data) {
	    jsonObj = JSON.parse( data );
	    feeds = jsonObj["feeds"];
            feeds.forEach( function(feed, i){
		$('#content').append(i + " -- " + feed["created_at"] + 
					" : " + feed["field1"]);
		$('#content').append("<br/>");
		dataArr[i] = feed["field1"];
	    })
	    if ($('#bar1').length) {
		var api = new jGCharts.Api(); 
		jQuery('<img>') 
		    .attr('src', api.make({
			data : dataArr,
			type : 'lc'
		    }))
		    .appendTo("#bar1");	
	    }
	    return true;
	}
	});

    }





});

