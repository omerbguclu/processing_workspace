class Electron{
    int x = 50, y = 50;
    float circle_width = radius / 2;
    int first_pos_x = radius, first_pos_y = radius;
    int position = 1;
    final static int radius = 50;
    final static float ACCELERATION_OF_GROWING = 0.5f;
    final static float ACCELERATION_OF_SHRINKING = ACCELERATION_OF_GROWING;
    final static int MOVEMENT_SPEED = 4;
    boolean turnflag = false;
    
    Electron(){}

    Electron(int x, int y, int circle_width){
        this.x = x;
        this.y = y;
        this.circle_width = circle_width;
        first_pos_x = x;
        first_pos_y = y;
    }

    void printToScreen(){
        circle(x, y, calculateCircleWidth());
        x = y = isNeedTurn() ? y + 1 : y - 1;
    }

    boolean isNeedTurn(){
        if(!turnflag)
        {
            position += MOVEMENT_SPEED;
            if(position >= radius)
            {
                turnflag = true;
            }
            return true;
        }

        position -= MOVEMENT_SPEED;
        if(position == 1)
        {
            turnflag = false;
            return false;
        }

        return false;
    }

    int calculateCircleWidth(){
        if(position <= radius / 2)
        {
            circle_width += ACCELERATION_OF_GROWING;
        }
        else
        {
            circle_width -= ACCELERATION_OF_SHRINKING;
        }

        return (int)circle_width;
    }
}

Electron electron = new Electron();

void setup(){
    size(400, 400);
}

void draw(){
    clear();
    electron.printToScreen();
}
