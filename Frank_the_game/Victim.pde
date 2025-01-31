class Victim extends Wander{
 Wander m;
 boolean isDead;
 
 Victim (float x, float y){
 super(x,y);
 m = new Wander(x,y);
 
 }
 
 void updates(){
 m.run(); 
 }

  
}
