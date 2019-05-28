$(document).ready(function () {
	/* TOOLTIP
	---------------------------------------------------- */
    $(function () {
        $('[data-toggle="tooltip"]').tooltip();
    });

	/* Quote Section toggle Active
	---------------------------------------------------- */
    $(".referenceRow img").click(function () {
        $('.referenceRow .active').removeClass('active');
        $(this).toggleClass('active');
    });
});
