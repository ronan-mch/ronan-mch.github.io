function Rectangle(x, y){
	this.width = 5;
	this.height = 5;
	this.x = x;
	this.y = y;
	this.move = function(a, b, others) {
		var newX = this.x + a;
		var newY = this.y + b;
		others.forEach(function(bird) {
			if (tooClose(newX, newY, bird.x, bird.y)){
				console.log("too close!");
				return new Rectangle(a-2, b-2);
		}});
		return new Rectangle(newX, newY);
	}
	

}
function tooClose(x1, y1, x2, y2) {
	var xDist = Math.abs(x1 - x2);
	var yDist = Math.abs(y1 - y2);
	return (xDist <= 2 && yDist <= 2);
}
function outOfBounds(can, obj) {
	return (obj.x <= 0 || obj.y <= 0) || (obj.x >= can.width || obj.y >= can.height);
}
function draw(){
	var boids = [];
	for (i = 0; i < 100; i+=10) {
		var randX = Math.round(Math.random() * i);
		var randY = Math.round(Math.random() * i);
		boids.push(new Rectangle(randX, randY));
	}
	var canvas = document.getElementById("canvas");
	var ctx = canvas.getContext("2d");
	boids.forEach(function(b, index, all) {
		console.log("Animating " + index);
		setTimeout(animate, 100, canvas, ctx, b, 1, all);
	});
	
}


function animate(canvas, ctx, a, direction, brds) {
	var newRect = a.move(10 * direction, 10 * direction, brds);
	//console.log("A: (" + a.x +", " + a.y + ")(" + a.width +", " + a.height + ")");
	//console.log("newRect: (" + newRect.x +", " + newRect.y + ")(" + newRect.width +", " + newRect.height + ")");
	//console.log("canvas: (" + canvas.width + ", " + canvas.height + ")");
	if (outOfBounds(canvas, newRect)) {
	//	console.log("turn!!!");
		setTimeout(animate, 100, canvas, ctx, newRect, direction * -1, brds);
		return;
	} else {
		ctx.clearRect(a.x, a.y, a.width, a.height);
		ctx.fillRect(newRect.x, newRect.y, newRect.width, newRect.height);
		setTimeout(animate, 50, canvas, ctx, newRect, direction, brds);
	}
}
