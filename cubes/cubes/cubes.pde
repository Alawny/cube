/*
Alan Lu
Jan 12
*/


PImage egirl;
PImage logtop;
PImage logside;
PImage kelptop;
PImage kelpside;
PImage kelpbottom;
PImage furnacefront;
PImage furnaceside;
PImage furnacetop;
float rotx, roty;

void setup() {
  size(800, 800, P3D);
  egirl = loadImage("sombra.png");
  logtop = loadImage("logtop.png");
  logside = loadImage("logside.png");
  kelptop = loadImage("kelptop.png");
  kelpside = loadImage("kelpside.png");
  kelpbottom = loadImage("kelpbottom.png");
  furnacefront = loadImage("furnacefront.png");
  furnaceside = loadImage("furnaceside.png");
  furnacetop = loadImage("furnacetop.png");
  textureMode(NORMAL);
}


void draw() {
  background(0, 255, 0);
  texturedCube(width/2, height/2, 0, egirl, 100);
  texturedCube(width/2+200, height/2, 0, logtop, logside, 100);
  texturedCube(width/2-200, height/2, 0, furnacefront, furnacetop, furnaceside, 100);
}

void texturedCube(float x, float y, float z, PImage topbottom, PImage side, float size) {
  pushMatrix();

  translate(x, y, z);
  scale(size);
  rotateX(rotx);
  rotateY(roty);
  noStroke();


  beginShape(QUADS);
  texture(topbottom);

  //top
  //     x  y  z  tx ty
  vertex(0, 0, 0, 0, 0);
  vertex(1, 0, 0, 1, 0);
  vertex(1, 0, 1, 1, 1);
  vertex(0, 0, 1, 0, 1);

  //bottom
  vertex(0, 1, 0, 0, 0);
  vertex(1, 1, 0, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(0, 1, 1, 0, 1);

  endShape();

  beginShape(QUADS);
  texture(side);

  //front
  vertex(0, 0, 1, 0, 0);
  vertex(1, 0, 1, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(0, 1, 1, 0, 1);
  //back
  vertex(0, 0, 0, 0, 0);
  vertex(1, 0, 0, 1, 0);
  vertex(1, 1, 0, 1, 1);
  vertex(0, 1, 0, 0, 1);
  //left
  vertex(1, 0, 1, 0, 0);
  vertex(1, 0, 0, 1, 0);
  vertex(1, 1, 0, 1, 1);
  vertex(1, 1, 1, 0, 1);
  //right
  vertex(0, 0, 1, 0, 0);
  vertex(0, 0, 0, 1, 0);
  vertex(0, 1, 0, 1, 1);
  vertex(0, 1, 1, 0, 1);

  endShape();


  popMatrix();
}

void texturedCube(float x, float y, float z, PImage texture, float size) {
  pushMatrix();

  translate(x, y, z);
  scale(size);
  rotateX(rotx);
  rotateY(roty);
  noStroke();


  beginShape(QUADS);
  texture(texture);

  //top
  //     x  y  z  tx ty
  vertex(0, 0, 0, 0, 0);
  vertex(1, 0, 0, 1, 0);
  vertex(1, 0, 1, 1, 1);
  vertex(0, 0, 1, 0, 1);
  //bottom
  vertex(0, 1, 0, 0, 0);
  vertex(1, 1, 0, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(0, 1, 1, 0, 1);
  //front
  vertex(0, 0, 1, 0, 0);
  vertex(1, 0, 1, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(0, 1, 1, 0, 1);
  //back
  vertex(0, 0, 0, 0, 0);
  vertex(1, 0, 0, 1, 0);
  vertex(1, 1, 0, 1, 1);
  vertex(0, 1, 0, 0, 1);
  //left
  vertex(1, 0, 1, 0, 0);
  vertex(1, 0, 0, 1, 0);
  vertex(1, 1, 0, 1, 1);
  vertex(1, 1, 1, 0, 1);
  //right
  vertex(0, 0, 1, 0, 0);
  vertex(0, 0, 0, 1, 0);
  vertex(0, 1, 0, 1, 1);
  vertex(0, 1, 1, 0, 1);

  endShape();


  popMatrix();
}

void texturedCube(float x, float y, float z, PImage front, PImage topbottom, PImage side, float size) {
  pushMatrix();

  translate(x, y, z);
  scale(size);
  rotateX(rotx);
  rotateY(roty);
  noStroke();


  beginShape(QUADS);
  texture(topbottom);

  //top
  //     x  y  z  tx ty
  vertex(0, 0, 0, 0, 0);
  vertex(1, 0, 0, 1, 0);
  vertex(1, 0, 1, 1, 1);
  vertex(0, 0, 1, 0, 1);
  //bottom
  vertex(0, 1, 0, 0, 0);
  vertex(1, 1, 0, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(0, 1, 1, 0, 1);

  endShape();

  beginShape(QUADS);
  texture(front);

  //front
  vertex(0, 0, 1, 0, 0);
  vertex(1, 0, 1, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(0, 1, 1, 0, 1);

  endShape();

  beginShape(QUADS);
  texture(side);

  //back
  vertex(0, 0, 0, 0, 0);
  vertex(1, 0, 0, 1, 0);
  vertex(1, 1, 0, 1, 1);
  vertex(0, 1, 0, 0, 1);
  //left
  vertex(1, 0, 1, 0, 0);
  vertex(1, 0, 0, 1, 0);
  vertex(1, 1, 0, 1, 1);
  vertex(1, 1, 1, 0, 1);
  //right
  vertex(0, 0, 1, 0, 0);
  vertex(0, 0, 0, 1, 0);
  vertex(0, 1, 0, 1, 1);
  vertex(0, 1, 1, 0, 1);

  endShape();


  popMatrix();
}


void mouseDragged() {
  rotx = rotx + (pmouseY - mouseY)*0.01;
  roty = roty + (pmouseX - mouseX)*-0.01;
}
