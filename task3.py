while True:
    greatest_number = int(input('Enter the greatest number: '))
    # if greatest_number < 0:
    #     print('please enter a positive number')
    #     pass
    # else:
    #     break

    number = 0
    counter = 0

    while True:
        product = number * (number+1)
        if product <= greatest_number:
            print(product)
            number += 1
            counter += 1
        else:
            print(f'There vere {counter} numbers printed')
            break
