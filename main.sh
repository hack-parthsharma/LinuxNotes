#!/bin/bash

echo 'Welcome to Notes app For linux'
sh ./info.sh

  makedir() {
        sh ./mkdir.sh
    }

    makedir
# Using for loop fr 1000 times
max=1000
for i in `seq 2 $max`
do
    #notes Contaniers
    #mkdir notes section
  
    
    read -p 'NotesApp>' help

    #help -h command secition


    if test "$help" == "note help"
    then
        sh ./help.sh  
        echo ''

    fi


    #other help based commands sections

  

    #quitting the program

    if test "$help" == 'quit'
    then
        echo ''
        echo 'Thanks For using NotesApp!'
        exit
    fi

    #note add need to fix changes

    if test  "$help" == 'note add'
    then 
        sh ./noteAdd.sh  
        echo ''  
    fi

    #adding basic linux Commands

    if test "$help" == 'ls'
    then 
        ls 
    
    elif test "$help" == 'note yesterday'
    then 
        echo 'Notes edited from the last 24 hours'
        #finds note which were edited during the last 24 hrss
        cd notes

        find . -type f -newermt "yesterday"

    elif test "$help" == 'note view'
    then 
        echo 'All the notes'
        echo ''
        cd notes
        ls
    elif test "$help" == 'note latest'
    then 
        echo 'Notes you hav edited in the past hour'
        echo ''
        cd notes 
        #test  

        find . -type  f -newermt "-1 hour"


    # tasks new features
    elif test "$help" == 'note task --add'
    then 
        sh ./tasks-create.sh
        echo "Adding new tasks"

    elif test "$help" == 'note task --rm'
    then 
        sh ./task-remove.sh

    elif test "$help" == 'note task --view'
    then
        sh ./task-view.sh



    
    fi 

   

    





done


