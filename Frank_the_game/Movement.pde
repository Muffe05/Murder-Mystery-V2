
// Mobile Object for "SOUL" game
class Movement{

  PVector pos; // position
  PVector vel = new PVector(1,1); // velocity
  PVector acc; // acceleration
  float r;
  float wandertheta; 
  float maxspeed;
  float maxforce;
  
  Movement(float _x, float _y){ // Der er et underscore foran x og y fordi så kan jeg huske at det er fra nogle parameter
  pos = new PVector(_x, _y);
  vel = new PVector(0,0);
  acc = new PVector(0,0);
  wandertheta = 0;
    maxspeed = 3;
    maxforce = 0.05;
  }
  
  Movement(PVector p){ // Det her er et overload fordi jeg bruger det samme object, men forskellige parameter. Vi bruger overloads til at gøre det lettere for programmeren...
  pos = p;
    vel = new PVector(0,0);
   acc = new PVector(0,0);
   wandertheta = 0;
     maxspeed = 3;
     maxforce = 0.05;
  }
  
 
  void display(){
    ellipse(pos.x, pos.y, 10,10);
  }
  
   void wander() {
    float wanderR = 25;         // Radius for our "wander circle"
    float wanderD = 80;         // Distance for our "wander circle"
    float change = 0.3;
    wandertheta += random(-change,change);     // Randomly change wander theta

    // Now we have to calculate the new position to steer towards on the wander circle
    PVector circlepos = vel.copy();    // Start with velocity
    circlepos.normalize();            // Normalize to get heading
    circlepos.mult(wanderD);          // Multiply by distance
    circlepos.add(pos);               // Make it relative to boid's position

    float h = vel.heading();        // We need to know the heading to offset wandertheta

    PVector circleOffSet = new PVector(wanderR*cos(wandertheta+h),wanderR*sin(wandertheta+h));
    PVector target = PVector.add(circlepos,circleOffSet);
    seek(target);

  }

  void seek(PVector target) {
    PVector desired = PVector.sub(target,pos);  // A vector pointing from the position to the target

    // Normalize desired and scale to maximum speed
    desired.normalize();
    desired.mult(maxspeed);
    // Steering = Desired minus Velocity
    PVector steer = PVector.sub(desired,vel);
    steer.limit(maxforce);  // Limit to maximum steering force

    applyForce(steer);
  }
  
  void applyForce(PVector force) {
    // We could add mass here if we want A = F / M
    acc.add(force);
    
  }
    
    void update() {
    // Update velocity
    vel.add(acc);
    // Limit speed
    vel.limit(maxspeed);
    pos.add(vel);
    // Reset accelertion to 0 each cycle
    acc.mult(0);
  }
  
    void borders() {
    if (pos.x < -r) pos.x = width+r;
    if (pos.y < -r) pos.y = height+r;
    if (pos.x > width+r) pos.x = -r;
    if (pos.y > height+r) pos.y = -r;
  }
    
    void run(){ // Makes those propatices run in the program
    wander();
    update();
    display();
    borders();
    }
    
}