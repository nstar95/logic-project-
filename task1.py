from typing import Counter


number = int(input("Enter number: "))
print(number)
print(type(number))
number_of_multiples = int(input("Enter number of multiples: "))
print(number_of_multiples)
print(type(number_of_multiples))

counter = 0
times = 1
while counter < number_of_multiples:
    multiple = number * times
    times += 1
    if multiple % 2 == 0:
        print(multiple)
        counter += 1
