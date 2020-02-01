//link to processing page explaining printing out pdfs: https://processing.org/tutorials/print/
import processing.pdf.*;  // Import PDF code
boolean saveOneFrame = false;

Petri Petri1;
//PImage comp;

void setup() {
  size(1440, 720);
  // background(181, 200, 230); // old background color
  //background(82,161,243); // blue
  background(213,108,170);
  Petri1 = new Petri(new PVector(width/2, height/2));
  //comp = loadImage("comp.png");
}

void draw() {  
  if (saveOneFrame == true) {             // When the saveOneFrame boolean is true,
    beginRecord(PDF, "line-####.pdf");    // start recording to the PDF
  }
  //background(82,161,243); //blue
  //background(181, 200, 230); // old background color}

  background(213,108,170);
  if ((keyPressed==true) & ((key == 'a') | (key == 's') | (key == 'd') | (key == 'f')
    | (key == 'g') | (key == 'h') | (key == 'j') | (key == 'k') | (key == 'l') )) {
    Petri1.addCell();
  }
  Petri1.run();
  //if (keyPressed==true && key == 'p'){
  //image(comp,width-(width/.96),height-(height/.96), width*1.08, height*1.38);}

  if (saveOneFrame == true) {             // If the PDF has been recording,</em>
    endRecord();                          // stop recording, -
    saveOneFrame = false;                 // and set the boolean value to false
  }
}


void keyPressed() {                     // When a mouse button is pressed,
  if (key == 'p') {
    saveOneFrame = true;                    // trigger PDF recording within the draw()
  }
}
