$(document).ready(function () {
	loadBlurays();

	$('#add-button').click(function (event) {
		event.preventDefault();
		$.ajax({
			type: 'POST',
			url: 'blurays',
			data: JSON.stringify({
				title: $('#add-title').val(),
				releaseDate: $('#add-release-date').val(),
				mpaaRating: $('#add-mpaa-rating').val(),
				director: $('#add-director').val(),
				studio: $('#add-studio').val()
			}),
			headers: {
				'Accept': 'application/json',
				'Content-Type': 'application/json'
			},
			'data-type': 'json'
		}).success(function () {
			$('#add-title').val('');
			$('#add-release-date').val('');
			$('#add-mpaa-rating').val('');
			$('#add-director').val('');
			$('#add-studio').val('');

			$('#bluray-rows').empty();
			loadBlurays();
		});
	});

	$('#edit-button').click(function (event) {
		event.preventDefault();
		$.ajax({
			type: 'PUT',
			url: 'blurays/' + $('#edit-id').val(),
			data: JSON.stringify({
				id: $('#edit-id').val(),
				title: $('#edit-title').val(),
				releaseDate: $('#edit-release-date').val(),
				mpaaRating: $('#edit-mpaa-rating').val(),
				director: $('#edit-director').val(),
				studio: $('#edit-studio').val()
			}),
			headers: {
				'Accept': 'application/json',
				'Content-Type': 'application/json'
			},
			'data-type': 'json'
		}).success(function () {
			$('#edit-id').val('');
			$('#edit-title').val('');
			$('#edit-release-date').val('');
			$('#edit-mpaa-rating').val('');
			$('#edit-director').val('');
			$('#edit-studio').val('');

			$('#bluray-rows').empty();
			loadBlurays();
		});
	});
});

function loadBlurays() {

	$.ajax({
		type: 'GET',
		url: 'blurays'
	}).success(function (data, status) {
		$.each(data, function (index, bluray) {
			console.log(bluray.director);
			console.log(bluray.studio);
			var id = bluray.id;
			$('#bluray-rows').append($('<tr>')
					.append($('<td>')
							.append($('<button>')
									.attr('class', 'btn btn-default btn-sm').attr({'onClick': '$("#details" + ' + id + ').toggle()'}).text('Expand')))
					.append($('<td>').text(bluray.title))
					.append($('<td>').text(bluray.releaseDate))
					.append($('<td>').text(bluray.mpaaRating))
					.append($('<td>')
							.append($('<button>')
									.attr('data-bluray-row-id', id).attr('class', 'btn btn-default btn-sm').attr('data-toggle', 'modal').attr('data-target', '#edit-dialog').text('Edit')))
					.append($('<td>')
							.append($('<button>').attr({'onClick': 'deleteBluray(' + id + ')'}).attr('class', 'btn btn-default btn-sm delete-button').text('Delete')))
					).append($('<tr>').attr('style', 'display: none').attr('id', 'details' + id)
							.append($('<td>'))
							.append($('<td>').text('Director: ' + bluray.director))
							.append($('<td>').text('Studio: ' + bluray.studio))
							.append($('<td>'))
							.append($('<td>'))
					);
		});
	});
}

function showDetails(id) {
	var row = $('#details' + id);
	row.show().children().show();
}

function hideDetails(id) {
	$('details' + id).hide().children.hide();
}


$('#edit-dialog').on('show.bs.modal', function (event) {
	// get the element that triggered the event
	var element = $(event.relatedTarget);
	var blurayId = element.data('bluray-row-id');
	var modal = $(this);

	console.log(blurayId);

	$.ajax({
		type: 'GET',
		url: 'blurays/' + blurayId
	}).success(function (bluray) {
		modal.find('#edit-id').val(bluray.id);
		modal.find('#edit-title').val(bluray.title);
		modal.find('#edit-release-date').val(bluray.releaseDate);
		modal.find('#edit-mpaa-rating').val(bluray.mpaaRating);
		modal.find('#edit-director').val(bluray.director);
		modal.find('#edit-studio').val(bluray.studio);
	});
});

function deleteBluray(id) {
	console.log(id);
	$.ajax({
		type: 'DELETE',
		url: 'blurays/' + id
	}).success(function () {

		$('#bluray-rows').empty();
		loadBlurays();
	});
}
