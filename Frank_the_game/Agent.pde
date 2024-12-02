class Agent{
Wander m;

Agent(float x, float y){
m = new Wander(x,y);

}

void update(){
m.run();
}


}
