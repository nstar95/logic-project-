while True:

    a = int(input("Enter value for a: "))
    while a <= 0 or a % 1 != 0:
        a = int(input("a must be positive integer: "))

    b = int(input("Enter value for b: "))
    while b % 1 != 0:
        b = int(input("b must be integer: "))

    number_of_terms = int(
        input('Enter number of terms you want to be printed: '))
    while number_of_terms <= 0 or number_of_terms % 1 != 0:
        number_of_terms = int(input("Number of terms positive integer: "))

    n = 1  # I know this name isn't very descriptive, bu thats how it is
    # called in a rule, and I wanted to stay as close to rule as possible
    counter = 0

    while counter < number_of_terms:
        U = (a * n) + b
        print(U)
        counter += 1
        n += 1
    repeat = input('Do you want to choose another sequence?(Y/n): ')
    while repeat != 'N' and repeat != 'n' and repeat != 'Y' and repeat != 'y':
        repeat = input('Please eneter Y for another sequence or N to quit: ')
    if repeat == 'N' or repeat == 'n':
        break
