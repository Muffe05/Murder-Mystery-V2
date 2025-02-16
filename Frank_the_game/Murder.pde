class Murder extends Wander{
  Victim m;
  
  PVector targetPosV;
  int targetV;
  int RNG;
  
  Murder (float x, float y){
  super(x,y);
  m = new Victim(x,y);
  newTargetV();
  maxspeed = 4;
  maxforce = 0.65;
  }

void display(){
    fill(200, 0, 0);
    ellipse(pos.x, pos.y, 10,10);
    }


void updateM(){
   seek(targetPosV());
   update();
   borders();
   display();
   if(dist(pos.x, pos.y, a.get(targetV).pos.x, a.get(targetV).pos.y) <= 2 ) {
     a.get(targetV).isDead = true;
     newTargetV();
   }
   }
   

   
   PVector targetPosV(){
   return a.get(targetV).pos;
   }
   
   void newTargetV(){
   targetV = (int)random(0,a.size());
   if(a.get(targetV).isDead){
     newTargetV(); }
   
   print(targetV+"V ");
   
   }
   

}
