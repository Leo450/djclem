(function ($, root, undefined) {

	$(function () {

		'use strict';

		let ld = new LetterDrawer(document.getElementById("anim-logo"), {width: 120, height: 120}, 10, "#ffffff");
		ld.drawCircular(50);

	});

})(jQuery, this);
