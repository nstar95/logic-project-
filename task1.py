while True:
    number = int(input("Enter number: "))
    if number <= 0:
        print('Please enter a number that is greader then 0')
        continue

    number_of_multiples = int(input("Enter number of multiples: "))

    counter_of_multiples = 0
    increment = 2

    while counter_of_multiples < number_of_multiples:
        multiple = number * increment
        increment += 1
        if multiple % 2 == 0:
            print(multiple)
            counter_of_multiples += 1
