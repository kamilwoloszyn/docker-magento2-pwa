#!/bin/bash

if [ $# -eq 2 ];
then
    if [ -d $1 ];
     then
        if [ -r "$1/package.json" ];
         then
            cd $1
            case $2 in 
                "development")
                    npm run watch
                    ;;
                "production")
                    npm run build
                    ;;
                *)
                    npm start
                    ;;
            esac
        else
            echo "Check if your project exist";
        fi
    else
        echo "Path directory does not exist!";
    fi
else
    echo "Program requires two arguments!" ;
fi