class LetterDrawer
{

	constructor(canvas, size, strokeWidth, color)
	{

		this.canvas = canvas;
		this.context = this.canvas.getContext("2d");
		this.size = size;
		this.strokeWidth = strokeWidth;
		this.color = color;

		this.initCanvas();
		this.initContext();

	}

	initCanvas()
	{

		this.canvas.width = this.size.width;
		this.canvas.height = this.size.height;
		this.canvas.style.width = this.size.width;
		this.canvas.style.height = this.size.height;

	}

	initContext()
	{

		this.context.strokeStyle = "#ffffff";
		this.context.fillStyle = "#ffffff";
		this.context.lineWidth = this.strokeWidth;

	}

	drawCircular(radius, center, angle, startAngle)
	{

		// Default values
		if(center === undefined){
			center = {
				x: this.size.width/2,
				y: this.size.height/2
			}
		}
		if(angle === undefined){
			angle = Math.PI*2;
		}
		if(startAngle === undefined){
			startAngle = 0;
		}



		// Draw
		this.context.beginPath();
		this.context.arc(center.x, center.y, radius, startAngle, angle + startAngle);
		this.context.stroke();
		this.context.closePath();

	}

}