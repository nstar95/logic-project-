while True:
    greatest_number = int(input('Enter the greatest number: '))
    if greatest_number < 0:
        greatest_number = int(input("Plese enter a positive number: "))

    number = 1
    counter = 0

    print()
    print("***************************************************************")
    print("The numbers that are the products of two integers in succession")
    print("***************************************************************")
    while True:
        product = number * (number+1)
        if product <= greatest_number:
            print(f'{counter+1}) {product}')
            number += 1
            counter += 1
        else:
            break
