(function ($, root, undefined) {

	$(function () {

		'use strict';

		let ld = new LetterDrawer({
			canvas: document.getElementById("anim-logo"),
			size: {width: 120, height: 120},
			travel: [
				{
					start: 0,
					end: 50,
					type: "arc",
					settings: {
						radius: 50
					}
				},
				{
					start: 50,
					end: 100,
					type: "arc",
					settings: {
						radius: 20
					}
				}
			],
			duration: 5
		});
		setTimeout(() => {
			ld.draw();
		}, 1000);

	});

})(jQuery, this);
