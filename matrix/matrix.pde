import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.IntStream;

static final int LETTER_GROUP_SIZE=50;

class RGB {
    int r = 0, g = 0, b = 0;
    String name = "";

    RGB(String name, int r, int g, int b) {
        this.name = name;
        this.r = r;
        this.g = g;
        this.b = b;
    }
}

List<RGB> green_color_palette = new ArrayList<RGB>(Arrays.asList(
        new RGB("lawngreen", 124, 252, 0),
        new RGB("chartreuse", 127, 255, 0),
        new RGB("limegreen", 50, 205, 50),
        new RGB("lime", 0, 255, 0),
        new RGB("forestgreen", 34, 139, 34),
        new RGB("green", 0, 128, 0)));

Letter a = new Letter();
LetterGroup lg = new LetterGroup();
List<LetterGroup> lgs = new ArrayList<>();

void setup() {
    clear();
    size(800, 800);
    background(0, 0, 0);
    int posx = 0;
    for (int i = 0; i < width / 10; i++) {
        lgs.add(new LetterGroup(posx));
        posx += 10;
    }
}

void draw()
{
  if(!mousePressed){
    clear();
    //delay(5);
    a.moveForward();
    lgs.stream().forEach(x -> x.printToScreen());
  }
}
