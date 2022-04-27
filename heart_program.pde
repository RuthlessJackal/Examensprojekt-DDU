
PShape s;
int BBM = 60; //her kan man vælge hvor mange BBP hjertet skal pumpe med (det er de store tryk den tælder, tror ikke de mindre skal tælles med)

void setup() {
  size(800, 800, P3D);
  s = loadShape("heart2.obj");
  frameRate(30);
}

void draw() {
  println(frameRate);
  lights();
  background(0);
  
  //camera(width/2.0, height/2.0, (height/2.0)/(pow((sin(radians(frameCount*12))*sin(radians(frameCount*6))*3),24)*0.000000005+3), width/2.0, height/2.0, 0, 0, 1, 0);
  //camera(width/2.0, height/2.0, (height/2.0)/(pow((sin(radians(frameCount*12))*sin(radians(frameCount*12))*3),24)*0.00000000003+3), width/2.0, height/2.0, 0, 0, 1, 0);
  camera(width/2.0, height/2.0, (height/2.0)-300-pow((sin(radians(frameCount*12*BBM/60))+sin(radians(frameCount*12*BBM/60)-1.45)*sin(radians(frameCount*12*BBM/60))),10)*2.2, width/2.0, height/2.0, 0, 0, 1, 0);
  translate(width/2, height/2, -100);
  println((pow((sin(radians(frameCount*12))+sin(radians(frameCount*12)-1.5)*sin(radians(frameCount*12))),10)*0.1+3));
  stroke(255);
  noFill();
  rotateZ(radians(180)); //rotate in the y-axis by passing the radians conversion of 45 degrees
  rotateY(radians(frameCount)/2);
  shape(s, 0, 0);

}
