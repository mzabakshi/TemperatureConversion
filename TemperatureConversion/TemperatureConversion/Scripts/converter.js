$(document).ready(function () {
    $('#txtFahrenheit').on('input', function () {
        var value = $('#txtFahrenheit').val();
        var result = (value - 32) / 1.8;
        $('#txtCelsius').val(result.toFixed(5));
    })

    $('#txtCelsius').on('input', function () {
        var value = $('#txtCelsius').val();
        var result = (value * 1.8) + 32;
        $('#txtFahrenheit').val(result.toFixed(1));
    })
})