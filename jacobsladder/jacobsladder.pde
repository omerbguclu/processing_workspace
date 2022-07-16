import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.function.Predicate;

final int SIZE_X = 400;
final int SIZE_Y = 400;

Bullet b;
void setup(){
    size(400, 400);
    b = new Bullet();
}


void draw(){
    if(!mousePressed){
        clear();
        b.show();
    }
}
