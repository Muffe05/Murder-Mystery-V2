class Murder extends Victim{
  Victim m;
  
  Murder (float x, float y){
  super(x,y);
  m = new Victim(x,y);
  }

void draw(){
display();
    
}

void display(){
    fill(255, 255, 0);
    ellipse(pos.x, pos.y, 10,10);
    }


}
