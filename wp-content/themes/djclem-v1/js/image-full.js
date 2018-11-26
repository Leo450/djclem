(function ($, root, undefined) {

    $(function () {

        'use strict';

        var main_rect = $("main").get(0).getBoundingClientRect();
        var container_offset = 150;
        var container_width = main_rect.width - container_offset;

        $('article img').each(function(){

            var article_rect = $(this).parents("article").get(0).getBoundingClientRect();
            var article_x_offset = article_rect.x - (main_rect.x + container_offset/2);

            $(this).css({
                "max-width": container_width + "px",
                "margin-left": "-" + article_x_offset + "px"
            });

        });

    });

})(jQuery, this);
