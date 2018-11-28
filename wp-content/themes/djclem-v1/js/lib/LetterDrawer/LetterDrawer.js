class LetterDrawer
{

	constructor(options)
	{

		this.drawLoop = this.drawLoop.bind(this);

		this.canvas = options.canvas;
		this.context = this.canvas.getContext("2d");
		this.size = options.size || {width: 100, height: 100};
		this.center = {
			x: this.size.width/2,
			y: this.size.height/2
		};
		this.strokeWidth = options.strokeWidth || 10;
		this.color = options.color || "#ffffff";
		this.travel = options.travel || null;
		this.duration = options.duration || null;

		this.startTime = null;

		this.initCanvas();
		this.initContext();

	}

	initCanvas()
	{

		if(!this.size.width || !this.size.height){
			throw new Error("!");
		}

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

	clearCanvas()
	{

		this.context.clearRect(0, 0, this.size.width, this.size.height);

	}

	draw()
	{

		if(!this.travel){
			throw new Error("!");
		}
		if(!this.duration){
			throw new Error("!");
		}

		this.startTime = Date.now();

		this.drawLoop();

	}

	drawLoop()
	{

		// step = {start: 20, end: 50}
		// /-----|---------------/
		//       21%
		//     |<-30%->| : {start: 0, end: 30 (end - start)(50 - 20)}
		//    20%     50%
		//       |
		//       1% : (progress - start)(21 - 20)

		const currentTime = Date.now();
		const elapsedTime = currentTime - this.startTime;
		const progress = elapsedTime/(this.duration*1000);

		this.clearCanvas();

		let steps = this.getRunningSteps(progress);
		for(let i = 0; i < steps.length; i++){
			const step = steps[i];
			const start = step.start/100;
			const end = step.end/100;
			const stepProgress = (progress - start)/(end - start);

			const drawMethodName = "drawStep" + step.type.substr(0, 1).toUpperCase() + step.type.substr(1);
			if(this[drawMethodName] === undefined){
				throw new Error("!");
			}
			this[drawMethodName](step.settings, stepProgress);

		}

		if(progress >= 1){
			return;
		}

		requestAnimationFrame(this.drawLoop);

	}

	getRunningSteps(progress)
	{

		let steps = [];

		for(let i = 0; i < this.travel.length; i++){
			const step = this.travel[i];
			if(step.start/100 < progress){
				steps.push(step);
			}
		}

		return steps;

	}

	drawStepArc(settings, progress)
	{

		const radius = settings.radius;
		const center = settings.center || this.center;
		let   angle = settings.angle || Math.PI*2;
		const startAngle = (settings.startAngle !== undefined && settings.startAngle !== null) ? settings.startAngle : 0;

		if(!radius){
			throw new Error("!");
		}
		if(isNaN(center.x) || isNaN(center.y)){
			throw new Error("!");
		}

		if(progress < 1){
			angle = angle*progress;
		}

		this.drawArc(radius, center, angle, startAngle);

	}

	drawArc(radius, center, angle, startAngle)
	{

		this.context.beginPath();
		this.context.arc(center.x, center.y, radius, startAngle, angle + startAngle);
		this.context.stroke();
		this.context.closePath();

	}

}