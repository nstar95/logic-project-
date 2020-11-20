number = float(input("Enter number: "))
while number != 0:
    number = float(input('Please enter a number that is not 0: '))

number_of_multiples = float(input("Enter number of multiples: "))

while number_of_multiples % 1 != 0 and number_of_multiples > 0:
    number_of_multiples = float(
        input("Please enter a positive integer number: "))

counter_of_multiples = 0
increment = 2

while counter_of_multiples < number_of_multiples:
    multiple = number * increment
    increment += 1
    if multiple % 2 == 0:
        print(multiple)
        counter_of_multiples += 1
