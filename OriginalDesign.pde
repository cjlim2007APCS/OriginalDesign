void setup()
{
	size(512,512);
}

void draw()
{
	
}
void mousePressed()
{
	dango();
}
void dango()
{
	int[] arrayR = {108, 235, 232, 116, 247, 89, 0, 204, 99, 12, 237, 4};
	int[] arrayG = {252, 255, 181, 237, 190, 117, 153, 209, 68, 128, 112, 68};
	int[] arrayB = {255, 105, 100, 102, 212, 255, 143, 48, 0, 27, 187, 125};
	int fillColor = (int)(Math.random()*6);
    fill(arrayR[fillColor], arrayG[fillColor], arrayB[fillColor]);
    stroke(arrayR[fillColor + 6], arrayG[fillColor + 6], arrayB[fillColor + 6]);
	int x = mouseX;
	int y = mouseY;
	strokeWeight(4);
    ellipse(x, y, 100, 85);
    strokeWeight(1);
    stroke(0, 0, 0);
    line(x - 10, y - 25, x - 10, y - 10);
    line(x + 10, y - 25, x + 10, y - 10);
}