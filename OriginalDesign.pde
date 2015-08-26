//set background to white and canvas size
void setup()
{
	background(255,255,255);
	size(512,512);
}
//needed for mousePressed to work later
void draw()
{
	
}
//makes a dango every time mousePressed
void mousePressed()
{
	dango();
}
//define dango
void dango()
{
	//array sets colors
	int[] arrayR = {108, 235, 232, 116, 247, 89, 0, 204, 99, 12, 237, 4};
	int[] arrayG = {252, 255, 181, 237, 190, 117, 153, 209, 68, 128, 112, 68};
	int[] arrayB = {255, 105, 100, 102, 212, 255, 143, 48, 0, 27, 187, 125};
	int fillColor = (int)(Math.random()*6);
	//randomizer picks color and its corresponding outline color
    fill(arrayR[fillColor], arrayG[fillColor], arrayB[fillColor]);
    stroke(arrayR[fillColor + 6], arrayG[fillColor + 6], arrayB[fillColor + 6]);
    //makes dango at mouse coordinates
	int x = mouseX;
	int y = mouseY;
	//the normal dango structure used with every click
	strokeWeight(4);
    ellipse(x, y, 100, 85);
    strokeWeight(1);
    stroke(0, 0, 0);
    line(x - 10, y - 25, x - 10, y - 10);
    line(x + 10, y - 25, x + 10, y - 10);
}