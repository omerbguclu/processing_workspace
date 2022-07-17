Rotor rotor;
void setup(){
    size(800, 800);
    background(0);
    
    rotor = new Rotor();
}
float angle = 0;
int points       = 12;           //number of points 
float pointAngle = 360/points; //angle between points
int radius       = width/2;     //length of each line from centre to edge of circle

void draw(){
    //background(0);
    //rotor.show();
    
    float x = cos(radians(angle)) * radius; //convert angle to radians for x and y coordinates
    println("radians angle" + radians(angle));
    println("cos radians angle" + cos(radians(angle)));
    println("x is equal to " + x);
    float y = sin(radians(angle)) * radius;
    println("y is equal to " + y);
    line(radius, radius, x+radius, y+radius); //draw a line from each point back to the centre
    
    angle += radius;
    if(radius == 360)
      angle = 0;
}
