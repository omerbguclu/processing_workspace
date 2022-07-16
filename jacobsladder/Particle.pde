class Point {
    int x;
    int y;
    color z;
    Point(int x, int y) {
        this.x = x;
        this.y = y;
        z = color((int)random(255), (int)random(255), (int)random(255));
    }
}

class Particle{
    int posx = SIZE_X, posy = SIZE_Y, radius = 3;
    int acceleration = 10, life = 10;
    List<Point> points = new ArrayList<>();

    Particle() { }

    Particle(int posx, int posy, int acceleration) { 
        this.posx = posx; this.posy = posy; 
        this.acceleration = acceleration;
        life = (int)random(10, 100);
        println(life);
    }

    void show(){
        if(life == 0) return;
        life--;

        fill(255, 255, 255);
        points.add(new Point(posx, posy));
        circle(posx--, posy, radius);
        posy = ((int)random(-2, 2) == 0) ? 
                (posy - (int)random(-1, 10)) : (posy + (int)random(-1, 10));
    }

    void showPoints(){
        points.stream().forEach(p -> set(p.x, p.y, p.z));
    }

    boolean isAlive(){
        return life > 0;
    }
}
