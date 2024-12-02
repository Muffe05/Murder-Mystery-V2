Movement m; // star of the game: frank!!
Movement mouse;
Agent a;

boolean debug = true;

void setup(){
size(840,680);
m = new Wander(width/2,height/2);
mouse = new Movement(width/2,height/2);
a = new Agent(100,100);
}

void draw(){
  background(255);
  m.run();
  mouse.seek(new PVector(mouseX, mouseY));
  mouse.run();
  a.update();
}

void mousePressed(){

debug = !debug;
}
