class Victim extends Wander{
 Wander m;
 boolean isDead;
 
 Victim (float x, float y){
 super(x,y);
 m = new Wander(x,y);
 
 }
 
 void updateV(){
 wander();
 update();
 borders();
 display();
 fill(0, 255, 0);
 }

  
}
