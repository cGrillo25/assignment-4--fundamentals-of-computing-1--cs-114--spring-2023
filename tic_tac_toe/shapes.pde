void drawShapes() {
  for (int row = 0; row < 3; row++) {
    for (int column = 0; column < 3; column++) {
      int x = row*width/3 + width/6;
      int y = column*height/3 + height/6;
      if (board[row][column] == 1) {
        noFill();
        ellipse(x, y, width/4, height/4);
      }
      else if (board[row][column] == -1) {
        line(x - width/8, y - height/8, x + width/8, y + height/8);
        line(x + width/8, y - height/8, x - width/8, y + height/8);
      }
    }
  }
}
