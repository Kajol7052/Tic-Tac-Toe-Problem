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

createGameboard
