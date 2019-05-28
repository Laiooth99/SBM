$('.modal[data-kind]').on("show.bs.modal", function () {
    $('body').addClass('modal-' + $(this).data('kind'));
});
$('.modal[data-kind]').on("hidden.bs.modal", function () {
    $('body').removeClass('modal-' + $(this).data('kind'));
});
