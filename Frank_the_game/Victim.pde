class Victim extends Wander{
  Wander m;
  
 Victim (float x, float y){
 super(x,y);
 boolean isDead;
 m = new Wander(x,y);
 
 }
 
 void update(){
 m.run(); 
 }

  
}
