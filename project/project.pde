PImage imgA; 
PImage imgB;
PImage imgC;
PImage currentImage;


void setup() {
  size(600, 600);
  imgA = loadImage("lion.jpg");
  imgB = loadImage("bird.jpg");
  imgC = loadImage("tiger.jpg");
  currentImage = imgA;
  imgA.resize(600, 600);
  imgB.resize(600, 600);
  imgC.resize(600, 600);
}

void draw() {
  background(255);
  fill(0);
  noStroke();

  float grid = mouseX/5;
  float gridSize = width/grid;

  translate(gridSize/2, gridSize/2);

  for (int x = 0; x < grid; x++) 
  {
    for (int y = 0; y < grid; y++) 
    {
      color c = currentImage.get(int(x*gridSize), int(y*gridSize));
      float size = map(brightness(c), 0, 255, gridSize, 0);  
      fill(c);
      ellipse(x*gridSize, y*gridSize, 3*size*mouseX/width, 3*size*mouseY/height);
    }
  }
}
void keyPressed()
{
  if (key == 'a')
  {
    currentImage = imgA;
  }  
  if (key == 'b')
  {
    currentImage = imgB;
  }
  if (key == 'c')
  {
    currentImage = imgC;
  }
}
