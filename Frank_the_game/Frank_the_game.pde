Movement m; // star of the game: frank!!
Movement mouse;
public ArrayList<Victim> a = new ArrayList<Victim>();
public ArrayList<Murder> b = new ArrayList<Murder>();

boolean debug = true;


void setup(){
size(1280,720);
/*m = new Wander(width/2,height/2);
mouse = new Movement(width/2,height/2);*/
for(int i=0; i<100; i++){
a.add(new Victim(i+50,i+50));} //arraylist starts at 0 and then we add 100 element making the size 100

for(int j=0; j<10; j++){
b.add(new Murder(j+50,j+50));
}
}


void draw(){
  background(255);
  /*m.run();
  mouse.seek(new PVector(mouseX, mouseY));
  mouse.run();*/
  for(int i=0; i<a.size(); i++){
  Victim part = a.get(i);
  part.updateV();
}

  for(int i=0; i<b.size(); i++){
  Murder parts = b.get(i);
  parts.updateM();}
  }

void mousePressed(){

debug = !debug;
}
