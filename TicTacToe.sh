#!/bin/bash/

echo "-------------------------------------------------WELCOME TO TIC TAC TOE GAME------------------------------------------"

ROW_NUMBER=3
COLUMN_NUMBER=3

#UC-1 Creating a game board
function createGameboard() {
        for (( row=0;row<$ROW_NUMBER;row++ ))
        do
                for (( col=0;col<$COLUMN_NUMBER;col++ ))
                        do
                                board[$row,$col]=" "
                        done
        done
}

#UC-2 : Player randomly chooses X or O
randomCheck=$((RANDOM%2))
function assignLetter() {
        if (( $randomCheck == 0 ))
        then
                player="X"
                computer="O"
        else
                player="O"
                computer="X"
        fi

        echo "Player has been assigned : " $player
        echo "Computer has been assigned : " $computer

}


createGameboard
assignLetter
