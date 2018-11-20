class Pantalla{
  int pantalla;
  Pantalla(int pantalla_){
   this.pantalla = pantalla_; 
  }
  
  void display(){
      switch(pantalla) {
  case 0:
    intro();
    break;
  case 1:
    elegir();
    break;
  case 2:
    busto();
    break;
  case 3:
    mural();
    break;
  case 4:
    vasija();
    break;
  case 5:
    vasijaa();
    break;
  }
  }
  
  void intro() {
  background(0);
  
  pushMatrix();
  scale(1.09);
  image(movie, 0,0);
  popMatrix();
  
  pushMatrix();
  translate(-180,-150);
  scale(0.6);
  titulo1 = loadImage("titulo1.png");
  image(titulo1, 250, 220);
  popMatrix();

  pushMatrix();
  translate(110,150);
  scale(0.5);
  titulo2 = loadImage("titulo2.png");
  image(titulo2, 400,300);
  popMatrix();

  keyPressed();
  if (key == 'q') {
    pantalla = 1;
  }
}


void elegir() {

  background(255);
  
  pushMatrix();
  scale(0.2);
  fondo2 = loadImage("fondo2.png");
  image(fondo2, 0,0);
  popMatrix();


  keyPressed();
  if (key == 'a') {
    pantalla = 2;
  }

  if (key == 's') {
    pantalla = 3;
  }

  if (key == 'd') {
    pantalla = 4;
  }

  if (key == 'f') {
    pantalla = 5;
  }
}


void busto() {
  background(0);
  scale(3);
  opencv.loadImage(video);

  image(video, 0, 0 );

  Rectangle[] faces = opencv.detect();
  println(faces.length);

  for (int i = 0; i < faces.length; i++) {
    println(faces[i].x + "," + faces[i].y);
    image(img1, faces[i].x, faces[i].y, faces[i].width, faces[i].height);
  }

  pushMatrix();
  textSize(5);
  fill(random(0, 255),0,random(0, 255));
  text("Presiona 'M' para elegir de nuevo", 130, 180);
  popMatrix();

  keyPressed();
  if (key == 'm') {
    pantalla = 1;
  }
}


void mural() {
  background(0);
  scale(3);
  opencv.loadImage(video);

  image(video, 0, 0 );

  Rectangle[] faces = opencv.detect();
  println(faces.length);

  for (int i = 0; i < faces.length; i++) {
    println(faces[i].x + "," + faces[i].y);
    image(img2, faces[i].x, faces[i].y, faces[i].width, faces[i].height);
  }

  pushMatrix();
  textSize(5);
  fill(random(0, 255),0,random(0, 255));
  text("Presiona 'M' para elegir de nuevo", 130, 180);
  popMatrix();

  keyPressed();
  if (key == 'm') {
    pantalla = 1;
  }
}


void vasija() {
  background(0);
  scale(3);
  opencv.loadImage(video);

  image(video, 0, 0 );

  Rectangle[] faces = opencv.detect();
  println(faces.length);

  for (int i = 0; i < faces.length; i++) {
    println(faces[i].x + "," + faces[i].y);
    image(img3, faces[i].x, faces[i].y, faces[i].width, faces[i].height);
  }

  pushMatrix();
  textSize(5);
  fill(random(0, 255),0,random(0, 255));
  text("Presiona 'M' para elegir de nuevo", 130, 180);
  popMatrix();

  keyPressed();
  if (key == 'm') {
    pantalla = 1;
  }
}


void vasijaa() {
  background(0);
  scale(3);
  opencv.loadImage(video);

  image(video, 0, 0 );

  Rectangle[] faces = opencv.detect();
  println(faces.length);

  for (int i = 0; i < faces.length; i++) {
    println(faces[i].x + "," + faces[i].y);
    image(img4, faces[i].x, faces[i].y, faces[i].width, faces[i].height);
  }

  pushMatrix();
  textSize(5);
  fill(random(0, 255),0,random(0, 255));
  text("Presiona 'M' para elegir de nuevo", 130, 180);
  popMatrix();

  keyPressed();
  if (key == 'm') {
    pantalla = 1;
  }
}
  
}