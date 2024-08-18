PImage img;
float [ ] x = new float [100];
float [ ] y = new float [100];
float [ ] speed = new float [100];
float [ ] x2 = new float [100];
float [ ] y2 = new float [100];
float [ ] speed2 = new float [100];
float [ ] R = new float [100];
float [ ] G = new float [100];
float [ ] B = new float [100];
float [ ] tam = new float [100];
int i = 0;

void setup() {
size (1920, 900);

stroke (255);
strokeWeight (3);
img = loadImage("logo.png");

while (i < 100) {
  x [i] = random (width);
  y [i] = random (height);
  speed [i] = random (1 ,3);
  x2 [i] = random (width);
  y2 [i] = random (height);
  speed2 [i] = random (1 ,3);
  R [i] = random (1 ,255);
  G [i] = random (1 ,255);
  B [i] = random (1 ,255);
  tam[i] = random(10,20);
  

i= i+ 1;

}
}

void draw (){
  
background (0);
imageMode(CENTER);
 
int i= 0;
while (i<100) {
  strokeWeight(tam[i]);
  stroke(R[i],G[i],B[i]);
     point (x [i], y [i]);
     x [i] = x [i] + speed [i];
     
     if (x[i] > displayWidth){
      x[i] = 0;
     };
     
     point (x2 [i], y2 [i]);
    x2 [i] = x2 [i] - speed [i];
     
     if (x2[i] > displayWidth){
       x2[i] = 0;
     };


   
     if (x [i] < 0)
          x[i] = width;
  i= i + 1;
}
 image(img, width/2, height/2, 800,800);
}
