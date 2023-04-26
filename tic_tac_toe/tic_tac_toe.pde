//*****************************************************************************************************
//  tic_tac_toe.pde                    Author: Courtney Grillo
//
//  Main algirythm for tic tac toe
//*****************************************************************************************************
void setup() {
  size(500, 500);
  player = -1;
  board = new int[3][3];
  gameEnds = false;
  println("Welcome to tik tak toe! Press any key 0-8 to play");
}

void draw() {
  background(255);
  drawBoard();
  drawShapes();
  gameState();
}

void gameState() {
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
    if (player == -1) {
      computersMove();
    } else if (player == 1) {
      keyTyped();
    }
  }
}

int checkWin() {
  for (int row = 0; row < 3; row++) {
    if (board[row][0] != 0 && board[row][0] == board[row][1] && board[row][1] == board[row][2]) {
      return board[row][0];
    }
  }
  for (int column = 0; column < 3; column++) {
    if (board[0][column] != 0 && board[0][column] == board[1][column] && board[1][column] == board[2][column]) {
      return board[0][column];
    }
  }
  //check diagnoal lines
  if (board[1][1] != 0 && ((board[0][0] == board[1][1] && board[1][1] == board[2][2]) &&
     (board[0][2] == board[1][1] && board[1][1] == board[2][0]))) {
      return board[1][1];
     }
  return 0;
}

boolean isBoardFull() {
  for (int rowCheck = 0; rowCheck < 3; rowCheck++) {
    for (int columnCheck = 0; columnCheck < 3; columnCheck++) {
      if (board[rowCheck][columnCheck] == 0) {
        return false;
      }
    }
  }
  return true;
}

void computersMove() {
  int row;
  int column;
  do {
    row = (int) random(3);
    column = (int) random (3);
  } while (board[row][column] != 0);
  board[row][column] = -1;
  player = 1;
}

void keyTyped() {
  if(player == 1 && gameEnds == false) {
    if(key >= '0' && key <= '8') {
      int index = key - '0';
      int row = index / 3;
      int column = index % 3;
      if (board[column][row] == 0) {
        board[column][row] = 1;
        player = -1;
      } else {
        println("Pick an in range value of 0 -8!");
      }
    }
  }
}
