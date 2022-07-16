class LetterGroup {
    List<Letter> letters = new ArrayList<>();

    LetterGroup() {
    };

    LetterGroup(int posx) {
        int posy = (int) random(-500, 20);
        int movement_speed = (int) random(2, 13);
        for (int i = 0; i < LETTER_GROUP_SIZE; i++) {
            letters.add(new Letter(posx, posy,movement_speed));
            posy += 10;
        }
        letters.get(letters.size() - 1).setIsLead(true);
    };

    void printToScreen() {
        letters.stream().forEach(x -> x.moveForward());

        if (letters.get(0).isOutOfScreen()) {
            int movement_speed = (int) random(2, 13);
            letters.stream().forEach(x -> 
            {
              x.setPosY(x.getPosY() - height - letters.size() * 10);
              x.setMovementSpeed(movement_speed);
            });
        }
    }
}
