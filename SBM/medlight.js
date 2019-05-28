$(document).ready(function () {
    $('.mediaRow a').click(function () {
        var mediaSrc = $(this).attr("data-media-src");
        $('#mediaModal .modal-body').empty().append("<a href='#' data-dismiss='modal' aria-label='Close'><img class='img-fluid' src='" + mediaSrc + "' /></a>");
    });
    $('.entWrap').click(function () {
        var entSrc = $(this).find('.entModalContent').html();
        $('#entModal .modal-contentWrap').empty().append(entSrc);
    });
    $('.exWrap').click(function () {
        var exSrc = $(this).find('.exModalContent').html();
        var exImg = $(this).find('.img-fluid').attr("alt");
        $("#exModal .imageSectionContent").css("background-image", "url('../img/ex/" + exImg + ".jpg')");
        $('#exModal .exContent').empty().append(exSrc);
    });
});
