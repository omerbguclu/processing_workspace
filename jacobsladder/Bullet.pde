class Bullet{
    int posx = 0, posy = SIZE_Y / 2, radius = 10;
    final static int MOVEMENT_SPEED = 4;
    boolean isCollisionHappened = false;
    List<Particle> particles = new ArrayList<>();

    void show(){
        if(posx >= SIZE_X || isCollisionHappened){
            if(isCollisionHappened)
            {
                drawCollision();
                return;
            }
            else
            {
                createCollision();
                return;
            }
        }

        // clear();
        circle(posx, posy, radius);
        posx += MOVEMENT_SPEED;
    }

    void drawCollision(){
        Predicate<Particle> isAlive = item -> item.isAlive();
        particles.stream()
                .filter(isAlive)
                .forEach(p -> p.show());

        particles.stream().forEach(p -> p.showPoints());
    }

    void createCollision(){
        isCollisionHappened = true;
        int particleCount = (int) random(1, 20);
        for(int i = 0; i < particleCount; i++){
            particles.add(new Particle(posx, posy, (int) random(1, 10)));
        }
    }
}
