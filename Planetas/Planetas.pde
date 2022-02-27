PShape sun;
PShape mercury;
PShape venus;
PShape tierra;
PShape luna;
PShape marte;
PShape fobos;
PShape jupiter;
PShape saturno;

PImage sunImg;
PImage mercuryImg;
PImage venusImg;
PImage tierraImg;
PImage lunaImg;
PImage marteImg;
PImage fobosImg;
PImage jupiterImg;
PImage saturnoImg;

PImage espacio;

boolean mover;
int grado;

void setup(){
  size(1000,650,P3D);
  noStroke();  
  
  espacio = loadImage("img/espacio3.jpg");
  
  
  sunImg = loadImage("img/sun.jpg");
  sun = createShape(SPHERE, 120);
  sun.setTexture(sunImg);
  
  mercuryImg = loadImage("img/mercurio.jpg");
  mercury = createShape(SPHERE, 30); 
  mercury.setTexture(mercuryImg);
  
  venusImg = loadImage("img/venus.jpg");
  venus = createShape(SPHERE, 50); 
  venus.setTexture(venusImg);
  
  tierraImg = loadImage("img/tierra.jpg");
  tierra = createShape(SPHERE, 60); 
  tierra.setTexture(tierraImg);
  
  lunaImg = loadImage("img/luna.jpg");
  luna = createShape(SPHERE, 20); 
  luna.setTexture(lunaImg);
  
  marteImg = loadImage("img/marte.jpg");
  marte = createShape(SPHERE, 40); 
  marte.setTexture(marteImg);
  
  fobosImg = loadImage("img/fobos.jpg");
  fobos = createShape(SPHERE, 15); 
  fobos.setTexture(fobosImg);
  
  jupiterImg = loadImage("img/jupiter.jpg");
  jupiter = createShape(SPHERE, 80); 
  jupiter.setTexture(jupiterImg);
  
  saturnoImg = loadImage("img/saturno.jpg");
  saturno = createShape(SPHERE, 70); 
  saturno.setTexture(saturnoImg);
  
  mover = true;
  grado = 1;
    
}


void draw(){
  background(255);
  textSize(24);
  
  hint(DISABLE_DEPTH_MASK);
  image(espacio, 0, 0, width, height);
  hint(ENABLE_DEPTH_MASK);
   
  rect(30, 30, 64, 40, 10);
  fill(0);
  text("Parar",35,58); 
  
  fill(255);
  rect(110, 30, 70, 40, 10);
  fill(0);
  text("Mover",115,58); 
  
  fill(255);
  
  if(mousePressed && mouseX>30 && mouseX<94 && mouseY>30 && mouseY<70 && mover == true){
     mover = false;
  } 
  
  if(mousePressed && mouseX>110 && mouseX<180 && mouseY>30 && mouseY<70 && mover == false){
     mover = true;
  } 
  
  
  pushMatrix();
  translate(width/2, height/2, -500);  
  
  //Sol
  pushMatrix();
  rotateX(radians(-30));  
  rotateY(PI * grado / 500);  
  shape(sun);  
  
  rotateY(-PI * grado / 500); 
  text("Sol",-20,-150); 
  fill(255);
  popMatrix();


  //Mercurio  
  pushMatrix();
  pointLight(255,  255,  255,  255, 255, 255); 
  rotateX(radians(-30));  
  rotateY(PI * grado / 200);  
  translate(100, 0, 200);
  shape(mercury);
  
  rotateY(-PI * grado / 200);   
  text("Mercurio",-30,-40);  
  popMatrix();
  
  //Venus
  pushMatrix();
  rotateX(radians(-30));
  rotateY(PI * grado / 300);  
  translate(-200, 0, 280);
  shape(venus);  
  
  rotateY(-PI * grado / 300);  
  text("Venus",-30,-80); 
  popMatrix();
  
  //Tierra
  pushMatrix();
  rotateX(radians(-30));
  rotateY(PI * grado / 300);
  translate(500, 0, 420);
  shape(tierra);  
  
  rotateY(-PI * grado / 300);  
  text("Tierra",-30,-80);   
  rotateY(PI * grado / 300);
  
  //Luna
  rotateY(PI * grado / 250);    
  translate(0, 0, 100);
  shape(luna);    
  rotateY(-PI * grado / 300);
  rotateY(-PI * grado / 250);    
  text("Luna",-30,-80);  
    
   popMatrix();
  
  //Marte
  pushMatrix();
  rotateX(radians(-30));
  rotateY(PI * grado / 300);
  translate(0, 0, 580);
  shape(marte);  
  
  rotateY(-PI * grado / 300);
  text("Marte",-30,-80); 
  rotateY(PI * grado / 300);
  
    //Fobos
    rotateY(PI * grado / -200);
    translate(0, 0, 95);
    shape(fobos); 
   
    rotateY(-PI * grado / 300);
    rotateY(-PI * grado / -200); 
    fill(255);
    text("Fobos",-30,-80);  
  popMatrix();
  
  //Jupiter
  pushMatrix();
  rotateX(radians(-30));
  rotateY(PI * grado / 300);
  translate(-500, 0, 720);  
  shape(jupiter);  
  
  rotateY(-PI * grado / 300); 
  text("Jupiter",-30,-100);  
  popMatrix();
  
  //Saturno
  rotateX(radians(-30));
  rotateY(PI * grado / 300);
  translate(-1000, 0, 860);  
  shape(saturno);   
  
  rotateY(-PI * grado / 300); 
  text("Saturno",-30,-100);  
  popMatrix();
  
  if(mover == true) grado += 1;
  
}
