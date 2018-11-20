import gab.opencv.*;
import processing.video.*;
import java.awt.*;
import processing.sound.*;

int pantalla;
PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage titulo1;
PImage titulo2;
PImage fondo2;

Movie movie;
SoundFile file;
Capture video;
OpenCV opencv;
Pantalla uno;


void setup(){
  size(950, 550);
  
  movie = new Movie(this, "fondo1.mp4");
  movie.loop();
  
  file = new SoundFile(this, "JorgeReyes-Dance.mp3");
  file.loop();

  video = new Capture(this, 640/2, 480/2);
  opencv = new OpenCV(this, 640/2, 480/2);
  uno = new Pantalla(this.pantalla);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);
  img1 = loadImage("img1.png");
  img2 = loadImage("img2.png");
  img3 = loadImage("img3.png");
  img4 = loadImage("img4.png");
  titulo1= loadImage("titulo1.png");
  titulo2= loadImage("titulo2.png");
  fondo2= loadImage("fondo2.png");
  video.start();
}

void draw(){
  uno.display();
}

void captureEvent(Capture c) {
  c.read();
}

void movieEvent(Movie movie) {
  movie.read();
}