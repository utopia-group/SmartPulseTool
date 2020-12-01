pragma solidity ^0.5.0;

contract RockPaperScissors {
    address payable player1;
    address payable player2;
    address payable owner;

    int p1Choice = -1;
    int p2Choice = -1;
    //mapping(uint => mapping(uint => uint)) payoffMatrix;
    uint[3][3] payoffMatrix;

    constructor(address payable _player1, address payable _player2, address payable _owner) public {
        player1 = _player1;
        player2 = _player2;
        owner = _owner;

        //Rock - 0
        //Paper - 1
        //Scissors - 2
        payoffMatrix[0][0] = 0;
        payoffMatrix[0][1] = 2;
        payoffMatrix[0][2] = 1;
        payoffMatrix[1][0] = 1;
        payoffMatrix[1][1] = 0;
        payoffMatrix[1][2] = 2;
        payoffMatrix[2][0] = 2;
        payoffMatrix[2][1] = 1;
        payoffMatrix[2][2] = 0;
    }

    function choicePlayer1(int choice) public {
        if(msg.sender == player1) {
            if(p1Choice == -1 && choice >= 0 && choice <= 2) {
                p1Choice = choice;
            }
            else {
                revert();
            }
        }
        else {
            revert();
        }
    }

    function choicePlayer2(int choice) public {
        if(msg.sender == player2) {
            if(p2Choice == -1 && choice >= 0 && choice <= 2) {
                p2Choice = choice;
            }
            else {
                revert();
            }
        }
        else {
            revert();
        }
    }

    function determineWinner() public {
        if(p1Choice != -1 && p2Choice != -1) {
            uint winner = payoffMatrix[uint(p1Choice)][uint(p2Choice)];
            if(winner == 1) {
                player1.transfer(address(this).balance);
            }
            else if(winner == 2) {
                player2.transfer(address(this).balance);
            }
            else {
                owner.transfer(address(this).balance);
            }
        }
        else {
            revert();
        }
    }
}
