import processing.serial.*;
Serial port;

int xlogo=400;//Posición X de la imagen
int ylogo=50;//Posición Y de la imagen
 int valor;
void setup(){
  println(Serial.list());
  port= new Serial(this, Serial.list()[0],9600);
  size(800,400);
}

void draw(){
  background(255,255,255);//fondo de color blanco
  fill(0,0,0);//para texto color negro
  
  //Ponemos la imagen de nuestro logo
  imageMode(CENTER);//Esta función hace que las coordenadas de la imagne sean el centro de esta y no la esquina izquierda arriba
  PImage imagen=loadImage("esfera.jpg");
  image(imagen,xlogo,ylogo,200,100);
  
  if(port.available()>0){
    valor=port.read();//lee el dato y lo almacena
  }
  //Visualizamos la temperatura con un texto
   text("Temperatura =",390,200);
   text(valor, 520, 200);
   text("ºC",547,200);
}

void keyPressed(){
  if(key=='s' || key == 'S'){
    ylogo++;
  }
  if(key=='w' || key == 'W'){
    ylogo--;
  }
  if(key=='e' || key == 'E'){
    exit();
  }
}
