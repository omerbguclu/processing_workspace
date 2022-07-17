class Rotor{
    PVector pos;
    int radius = 200;

    Rotor(){
        pos = new PVector(height/2, width/2);
    }

    void show(){
        fill(100);
        ellipse(pos.x, pos.y, radius, radius);
        stroke(255);
        line(pos.x, pos.y, pos.x, pos.y + radius / 2);
    }
}
