int fillF = 200;
int fillFch = 2;
int r = 1;
class planet {
  float size, radius, speed, angle;
  color c;
  planet(float imputSize, float imputRadius, float imputSpeed, float imputAngle,int c1,int c2,int c3) {
    size = imputSize;
    radius = imputRadius;
    speed = imputSpeed;
    angle = imputAngle;
    c = color (c1,c2,c3);
  }
  void planetDraw() {
    push();
    fill(this.c);
    rotate(radians(this.angle));
    this.angle = this.angle + this.speed;
    ellipse(this.radius, 0, this.size, this.size); 
    pop();
  }
}
planet merc = new planet(14, -215, 1.2, 20,169,169,169);
planet ven = new planet(20, -250, 0.7, 25,255,160,122);
planet er = new planet(22, -280, 1.4, 21,0, 0, 255);
planet mr = new planet(20, -315, 1.0, 20,178, 34, 34);
planet ur = new planet(50, -365, 1.0, 14,205, 133, 63);
planet s = new planet(35, -420, 1.1, 18,244, 164, 96);

void setup() {
  size(750, 750);
}
void draw() {
  ellipseMode(CENTER);
  noStroke();
  background(75-100, 0, 130-100);
  translate(width/2, height/2);
  fill(255, 140, 0);
  ellipse(0, 0, 380, 380);
  fill(255, 215, 0, fillF);
  ellipse(0, 0, 380, 380);
  fill(169, 169, 169);
  merc.planetDraw();
  ven.planetDraw();
  er.planetDraw();
  mr.planetDraw();
  ur.planetDraw();
  s.planetDraw();

  fillF = fillF + fillFch;
  if (fillF == 10) {
    fillFch = 2;
  }
  if (fillF == 240) {
    fillFch = -2;
  }
  if(r == 1){
    noFill();
    stroke(255);
    strokeWeight(5);
    ellipse(0,0,430,430);
    ellipse(0,0,500,500);
    ellipse(0,0,560,560);
    ellipse(0,0,630,630);
    ellipse(0,0,730,730);
    ellipse(0,0,840,840);
  }
}
void keyPressed(){
  if(key == ' '){
   if(r == 1){
     r = 0;
   }else{
     r = 1;
   }
  }
}
