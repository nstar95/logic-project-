read -p "Enter the greatest number: "  greatest_number

while [ $greatest_number -lt 2 ]  #2 is the lowest number that can be represented as product of two "nonnegative integers" in succession
do
    read -p "Greatest number can't be less then 2: " greatest_number
done

#Veriable declaration
number=1    #variable used for iteratinon 
counter=0   #variable used to count occurrences of numbers we are going to print

echo -e "\n***************************************************************"
echo "The numbers that are the products of two integers in succession"
echo -e "***************************************************************\n"

while true #for my own convinience I use the while loop here
do
    product=$(($number *(($number+1)))) #multiplying two succession integers and storring them in variable product
    if [ $product -le $greatest_number ] #keep running as long as product is less then greatest_number
    then
        echo -e "$(($counter + 1)))  $product = $number * $(($number+1))" #printing cunter, number we are looking for and integers in succession
        number=$(($number + 1)) #increasing number by 1
        counter=$(($counter + 1)) #increasing counter by 1
    else #breaking out of the loop
        echo -e "\n"
        break
    fi
done
