#!/bin/bash
guess () {
    echo "Please Enter A Guess Of The Current Directory Files Count";
    read numberOfFiles;
    arrayOfFiles=( $(ls) );
    numberOfFilesReal=${#arrayOfFiles[@]};
    if [[ $numberOfFiles -eq $numberOfFilesReal ]]
    then
        echo "Congratulations";
        exit 0;
    elif [[ $numberOfFiles -gt $numberOfFilesReal ]]
    then
        echo "Your Guess Is Higher Try Again";
        guess;
    else
        echo "Your Guess Is Lower Try Again";
        guess;
    fi

}
clear;
guess;