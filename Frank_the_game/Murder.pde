class Murder extends Wander{
  Victim m;
  
  Murder (float x, float y){
  super(x,y);
  m = new Victim(x,y);
  }

void draw(){
  updateM();
}

void display(){
    fill(200, 0, 0);
    ellipse(pos.x, pos.y, 10,10);
    }


   void updateM(){
   wander();
   update();
   borders();
   display();
   }

}
