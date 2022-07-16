class Letter {
    RGB rgb = new RGB("blank", 0, 0, 0);
    char character;
    int positionx = 20;
    int positiony = 20;
    int color_changer_counter = 0;
    int character_changer_counter = 0;
    final static int COLOR_CHANGE_TIME = 5;
    final static int CHARACTER_CHANGE_TIME = 4;
    boolean isLead = false;
    int movement_speed = 1;

    Letter() {
    };

    Letter(int posx, int posy, int movement_speed) {
        positionx = posx;
        positiony = posy;
        this.movement_speed = movement_speed;
    }

    void printToScreen() {
        fill(0, 128, 0);
        text((char) (random(33, 125)), 40, 120);
    }

    void moveForward() {
        if (color_changer_counter++ == COLOR_CHANGE_TIME) {
            color_changer_counter = 0;
            rgb = green_color_palette.get((int) random(0, green_color_palette.size() - 1));
        }

        if (character_changer_counter++ == CHARACTER_CHANGE_TIME) {
            character_changer_counter = 0;
            character = (char) (random(33, 125));
        }

        if (isLead) {
            // fill(173,255,47); // green yellow
            // rect(positionx, positiony, 8, 10);
            fill(255, 255, 255);
        } else {
            fill(rgb.r, rgb.g, rgb.b);
        }

        text(character, positionx, positiony);
        positiony += movement_speed;
    }

    boolean isOutOfScreen() {
        return positiony > height;
    }

    void setPosY(int posy) {
        positiony = posy;
    }

    int getPosY() {
        return positiony;
    }

    void setIsLead(boolean isLead) {
        this.isLead = isLead;
    }

    void setMovementSpeed(int movement_speed) {
        this.movement_speed = movement_speed;
    }
}
