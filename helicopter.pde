float A, B, C;
int D, I, J, K;
int E, F, G, H, L, M;
int Patroni1, Patroni2;
void setup() {
  Patroni1 = 350;
  Patroni2 = 350;
  size(750, 600, P3D);
  println("----------------------------------------------------");
  println("                   инструкция");
  println("Кнопка u перезарежает всё");
  println("При нажатии стрелок он вращается");
  println("Кнопки q, w, e, r запускают снаряды");
  println("При нажатии пробела вертолёт поварачивается в 0,0");
  println("Кнопки t, y включают пулемёты.Патроны не бесконечны");
  println("----------------------------------------------------");
}
void draw() {
  lights();
  background(215);
  push();
  translate(width/2, height/2);
  rotateY(A);
  rotateX(C);
  fill(128-20, 128-20, 0-20);
  stroke(128-40, 128-40, 0-40);
  strokeWeight(3);
  push();
  translate(-30, 15, 0);
  box(150, 80, 100);
  pop();

  push();
  translate(-110, 20, 0);
  box(10, 60, 90);
  pop();

  push();
  translate(-120-13, 25, 0);
  box(30, 50, 70);
  pop();

  push();
  translate(-150-13, 30, 0);
  box(30, 35, 50);
  pop();

  push();
  translate(120, 30, 0);
  box(150, 25, 28);
  pop();

  push();
  translate(182, 5, 0);
  box(25, 25, 28);
  pop();

  push();
  translate(-50, 30, 115);
  box(45, 15, 150);
  pop();

  push();
  translate(-50, 30, -115);
  box(45, 15, 150);
  pop();

  stroke(169, 169, 169);
  fill(169, 169, 169);
  push();
  translate(-50, -40, 0);
  box(15, 30, 15);
  pop();

  strokeWeight(1);
  fill(100, 100, 100); 
  stroke(0); 
  push();
  translate(-50, -50, 0);
  rotateY(radians(B));
  box(400, 10, 10);
  pop();

  push();
  translate(-50, -50, 0);
  rotateY(radians(B+90));
  box(400, 10, 10);
  pop();

  push();
  fill(100, 100, 100);
  translate(-58, 39, -80);
  box(40, 20, 20);
  translate(-14, 0, 0);
  box(40, 16, 16);
  fill(60, 60, 60); 
  translate(-14, 0, 0);
  box(70, 4, 4);
  fill(184, 134, 11);
  translate(55, -3, 0);
  box(20);
  pop();

  push();
  fill(100, 100, 100); 
  translate(-58, 39, 80);
  box(40, 20, 20);
  translate(-14, 0, 0);
  box(40, 16, 16);
  fill(60, 60, 60); 
  translate(-14, 0, 0);
  box(70, 4, 4);
  fill(184, 134, 11);
  translate(55, -3, 0);
  box(20);
  pop();

  push();
  fill(100, 100, 100);
  translate(-55, 39, 120);
  box(40, 25, 25);
  translate(-8-H, 0, 0);
  fill(255, 250, 250);
  box(40, 20, 20);
  pop();

  push();
  fill(100, 100, 100);
  translate(-55, 39, -120);
  box(40, 25, 25);
  translate(-8-F, 0, 0);
  fill(255, 250, 250);
  box(40, 20, 20);
  pop();

  push();
  fill(100, 100, 100);
  translate(-55, 39, 150);
  box(40, 25, 25);
  translate(-8-G, 0, 0);
  fill(255, 250, 250);
  box(40, 20, 20);
  pop();

  push();
  fill(100, 100, 100);
  translate(-55, 39, -150);
  box(40, 25, 25);
  translate(-8-E, 0, 0); // тут
  fill(255, 250, 250);
  box(40, 20, 20);
  pop();

  push();
  fill(100, 100, 100);
  translate(182, 0, -21);
  rotateZ(radians(B));
  box(7, 65, 7);
  pop();
  push();
  fill(100, 100, 100);
  translate(182, 0, -21);
  rotateZ(radians(90+B));
  box(7, 65, 7);
  pop();

  push();
  stroke(169, 169, 169);
  fill(169, 169, 169);
  translate(182, 0, -19);
  box(6, 6, 12);
  pop();

  push();
  stroke(128-40, 128-40, 0-40);
  strokeWeight(3);
  fill(128-20, 128-20, 0-20);
  translate(72, 22, 0);
  box(60, 40, 45);
  pop();
  B = B + 18;
  if (D == 1) {
    E = E + 24;
  } else {
    E = 0;
  }
  if (I == 1) {
    F = F + 24;
  } else {
    F = 0;
  }
  if (J == 1) {
    G = G + 24;
  } else {
    G = 0;
  }
  if (K == 1) {
    H = H + 24;
  } else {
    H = 0;
  }
  if (L == 1) {
    if (Patroni1 > 0) {
      push();
      fill(255, random(20, 240), 0);
      translate(-120, 39, 80);
      box(round(random(1, 10)));
      pop();
      Patroni1 = Patroni1 - 1;
    }else{
     L = 0; 
    }
  }
  if (M == 1) {
    if (Patroni2 > 0) {
      push();
      fill(255, random(20, 240), 0);
      translate(-120, 39, -80);
      box(round(random(1, 10)));
      pop();
      Patroni2 = Patroni2 - 1;
    }else{
     M = 0; 
    }
  }
  pop();
  if (keyPressed == true) {
    if (keyCode == LEFT) {
      A = A + 0.01;
    }
    if (keyCode == RIGHT) {
      A = A - 0.01;
    }
    if (keyCode == UP) {
      C = C + 0.01;
    }
    if (keyCode == DOWN) {
      C = C - 0.01;
    }
    if (key == 'q'|| key == 'й') {
      if (D == 0) {
        D = 1;
      }
    }
    if (key == 'w'|| key == 'ц') {
      if (I == 0) {
        I = 1;
      }
    }
    if (key == 'e'|| key == 'у') {
      if (J == 0) {
        J = 1;
      }
    }
    if (key == 'r'|| key == 'к') {
      if (K == 0) {
        K = 1;
      }
    }
  }
}
void keyPressed() {
  if (key == 't'|| key == 'е') {
    if (L == 0) {
      L = 1;
    } else {
      L = 0;
    }
  }
  if (key == 'y'||key == 'н') {
    if (M == 0) {
      M = 1;
    } else {
      M = 0;
    }
  }
  if (key == ' ') {
    A = 0;
    C = 0;
  }
  if (key == 'u'||key == 'г') {
    D = 0;
    I = 0;
    J = 0;
    K = 0;
    Patroni1 = 350;
    Patroni2 = 350;
  }
}
