#!/bin/bash

function Task1 {
    #put your code here instead of echo...
    echo 'This is function task1'
}
function Task2 {
    #put your code here instead of echo...
    echo 'This is function task2'
}
function Task3 {
        read -p "Enter the greatest number for: "  greatest_number

    while [ $greatest_number -lt 2 ]  #2 is the lowest number that can be represented as product of two "nonnegative integers" in succession
    do
        read -p "Greatest number can't be less then 2: " greatest_number
    done

    #Veriable declaration
    number=1    #variable used for iteratinon 
    counter=0   #variable used to count occurrences of numbers we are going to print

    echo -e "\n********************************************************************"
    echo -e "\tTHE NUMBER THAT ARE PRODUCTS OF INTEGER IN SUCCESION"
    echo -e "********************************************************************\n"

    while true #for my own convinience I use the while loop here
    do
        product=$(($number *(($number+1)))) #multiplying two succession integers and storring them in variable product
        if [ $product -le $greatest_number ] #keep running as long as product is less then greatest_number
        then
            echo -e "$(($counter + 1)))  $product = $number * $(($number+1))" #printing cunter, number we are looking for and integers in succession
            number=$(($number + 1)) #increasing number by 1
            counter=$(($counter + 1)) #increasing counter by 1
        else #breaking out of the loop
            break
        fi
    done
}
function ErrorMessege {
    echo -e "\n\t!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
    echo -e "\t!!!!!!!!    Sorry, your input doesnt mach any option    !!!!!!!!"
    echo -e "\t!!!!!!!!       PLEASE CHOOSE FROM THE MENU BELLOW       !!!!!!!!"
    echo -e "\t!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
}
function GoodBye {
    echo "Good Bye!!!"
}

while true
do  
    echo -e "\n*********************************************************************************"
    echo -e "*                                                                               *"
    echo -e "*\tPrint list of even multiples of the number(M/m)                         *"
    echo -e "*\tPrint list of terms of the chosen sequence(S/s)                         *"
    echo -e "*\tPrint list of numbers that are product of integers in succession(P/p)   *"
    echo -e "*\tQuit the program(Q/q)                                                   *"
    echo -e "*                                                                               *"
    echo -e "*********************************************************************************\n"
    read -p "        Please select: " selection
    echo -e "        You selected: $selection\n"
    case $selection in
        "M" | 'm')
        Task1
        ;;

        "S" | "s")
        Task2
        ;;

        "P" | "p")
        Task3
        ;;

        "Q" | "q")
        GoodBye
        break
        ;;
        *)
        ErrorMessege
    esac

done