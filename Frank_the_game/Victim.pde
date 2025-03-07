class Victim extends Wander{
 Wander m;
 boolean isDead = false;
 boolean breed = false;
 int targetB;
 int rng = 2;
 PVector targetPosB;

 
 Victim (float x, float y){
   super(x,y);
   m = new Wander(x,y);
 }
 
 void updateV(){
 if(!isDead){
   if (!breed) {
     wander(); 
     randomizer();
   }
   if(breed){
     seek(targetPosB());
     if(dist(pos.x, pos.y, a.get(targetB).pos.x, a.get(targetB).pos.y) <= 2){
       breed=false;
       maxspeed = 3;
       maxforce = 0.5;
       a.add(new Victim(pos.x,pos.y));
     }
   }
   if(rng==0){
     newTargetB();
     breed=true;
     maxspeed = 3.5;
     maxforce = 0.55;
     rng=1;
   }
   update();
   borders();
   display();
 }
 }
 
 void newTargetB(){
   targetB = (int)random(0,a.size());
   if(a.get(targetB).isDead){
     newTargetB(); 
   }
   print(targetB+"B ");
 }
   
 PVector targetPosB(){
   return a.get(targetB).pos;
 }
 
 void display(){
    fill(0, 255, 0);
    ellipse(pos.x, pos.y, 10,10);
 }
 
 void randomizer(){
   rng = (int)random(0,1000);
 }
}
