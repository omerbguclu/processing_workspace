float angle;
int points;           //number of points 
float pointAngle; //angle between points
int radius;     //length of each line from centre to edge of circle

Rotor rotor;
void setup(){
    size(800, 800);
    background(0);
    
    angle = 0;
    points = 12;
    pointAngle = 360/points;
    radius = width/2;
    rotor = new Rotor();
}

void draw(){
    //background(0);
    //rotor.show();
    // if(mousePressed)
    {
        stroke(255);
        float x = cos(radians(angle)) * radius; //convert angle to radians for x and y coordinates
        // println("radians angle : " + radians(angle) + " - cos radians angle : " + cos(radians(angle)));
        float y = sin(radians(angle)) * radius;
        // println("x : " + x + " - y : " + y);
        line(radius, radius, x+radius, y+radius); //draw a line from each point back to the centre
        
        angle += pointAngle;
        if(angle == 360)
        angle = 0;

        delay(100);
    }
}

void mousePressed(){
    println("----------------------------------------------");
    println("mouseX : " + mouseX + " - mouseY : " + mouseY);
    println("width : " + width + " - height : " + height);
    println("radius : " + radius);
    println("angle : " + angle);
    println("pointAngle : " + pointAngle);
    println("points : " + points);
    println("----------------------------------------------");
    println();
}
