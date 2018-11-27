function drawLogo(size, rotation_angle)
{

    if(!size){
        size = 57;
    }
    if(!rotation_angle){
        rotation_angle = 0
    }

    let canvas = document.getElementById("anim-logo");
    canvas.width = size;
    canvas.height = size;
    canvas.style.width = size;
    canvas.style.height = size;

    let context = canvas.getContext("2d");
    context.strokeStyle = "#ffffff";
    context.fillStyle = "#ffffff";
    context.lineWidth = 11*size/57;

    let center_x = size/2;
    let center_y = size/2;
    let radius = 23*size/57;
    let angle = Math.PI*1.5;
    let nbstep = 50;
    let offset_angle = Math.PI/4 + rotation_angle*(Math.PI/180);

    context.beginPath();
    let loop_angle = null;
    for(let step = 0; step <= nbstep; step += 1){
        loop_angle = step*angle/nbstep + offset_angle;
        context.lineTo(center_x + Math.cos(loop_angle)*radius, center_y + Math.sin(loop_angle)*radius);
    }
    context.stroke();
    context.closePath();

    context.beginPath();
    context.arc(center_x, center_y, 5*size/57, 0, Math.PI*2);
    context.fill();
    context.closePath();

}

(function ($, root, undefined) {

    $(function () {

        'use strict';

        let logo_size = 25;

        drawLogo(logo_size, -90);

        let $button = $("button");
        let $anim_line = $("#anim-line");

        let button_rect = $button.get(0).getBoundingClientRect();
        let line_width = window.innerWidth - (button_rect.right + 20 + logo_size/2);
        /*$("#anim-logo").css({
            position: "fixed",
            left: button_rect.left - logo_size - 20 + "px",
            top: button_rect.top + button_rect.height/2 - logo_size/2 + "px",
        });*/

        $anim_line
            .css({
                position: "fixed",
                top: button_rect.top + button_rect.height/2 + "px",
                right: 0 + "px",
                height: "1px"
            });

        setTimeout(function(){

            $anim_line
                .addClass("anim-on")
                .css({
                    width: line_width + "px"
                });

            $button
                .hover(function(){
                    $anim_line.css({
                        width: 0 + "px"
                    });
                }, function(){
                    $anim_line.css({
                        width: line_width + "px"
                    });
                });

        }, 1500);

    });

})(jQuery, this);
