$(document).ready(function () {
    $('#searchBtn').click(function (event) {
        $.ajax({
            url: 'SearchMenu',
            type: 'POST',
            data: {
                searchName: $('#searchName').val()
            },
            success: function (responseText) {
                $('#imagediv').html(responseText);
            }
        });
    });
});

function searchFunction(search) {
    $.ajax({
        url: 'SearchMenu',
        type: 'POST',
        data: {
            searchName: search
        },
        success: function (responseText) {
            $('#imagediv').html(responseText);
        }
    });
}