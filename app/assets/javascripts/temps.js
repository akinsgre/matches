jQuery(function() {


    if ($('#content').length) {
	jQuery.ajax({
	url: 'temps/data.json',
	type: 'GET',
	dataType: 'text',
	success: function(data) {
            return $('#content').append("" + data);
	}
	});
    }


});

