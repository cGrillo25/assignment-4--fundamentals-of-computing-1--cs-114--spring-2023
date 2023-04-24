void setup() {
  size(500, 500);
  player = -1;
  board = new int[3][3];
  gameEnds = false;
}

void draw() {
  background(255);
  drawBoard();
  drawShapes();
  gameState();
}

void checkGameState() {
  int winner = checkWin();
  if (winner != 0) {
    gameEnds = true;
    if (winner == 1) {
      println("You Win!");
    } else {
      println("Computer Wins!");
    }
  } else if (isBoardFull()) {
    gameEnds = true;
    println("Its a Tie!");
  } else {
    gameEnds = false;
    if (player = -1) {
      computersMove();
    }
  }
}
