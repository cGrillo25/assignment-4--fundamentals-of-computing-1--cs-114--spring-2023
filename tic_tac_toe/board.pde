//**********************************************************************************
//
//
//
//**********************************************************************************

void drawBoard() {
  strokewieght(4);
  line(width/3, 0, width/3, height); // vertical lines
  line(2*width/3, 0, 2*width/3, height);
  line(0, height/3, width, height/3); // horizontal lines
  line(0, 2*height/3, width, 2*height/3);
}
