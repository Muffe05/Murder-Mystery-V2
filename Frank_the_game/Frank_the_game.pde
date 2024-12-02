Movement m; // star of the game: frank!!
Movement mouse;
Agent[] a = new Agent[100];

boolean debug = true;

void setup(){
size(1280,720);
/*m = new Wander(width/2,height/2);
mouse = new Movement(width/2,height/2);*/
for(int i=0; i<a.length; i++){
a[i] = new Agent(i+50,i+50);}
}

void draw(){
  background(255);
  /*m.run();
  mouse.seek(new PVector(mouseX, mouseY));
  mouse.run();*/
  for(int i=0; i<a.length; i++){
  a[i].update();}
}

void mousePressed(){

debug = !debug;
}
