# This function adds two numbers
def add(x, y):
    return x + y
# This function subtracts two numbers
def subtract(x, y):
    return x - y

# This function multiply two numbers
def multiply(x, y):
    return x * y

# This function divide two numbers
def divide(x, y):
    return x / y

def even_odd(x):
    '''
    input: number x
    output: even/odd
    '''

    if( x%2 == 0 ):
        print(x," is even")
    else:
        print(x," is odd")

def percent(x, y):
    return (x / y) * 100        

print("Select Operation.")
print("1. Add")
print("2. Subtract")
print("3. Multiply")
print("4. Divide")
print("5. Even or Odd")
print("6. Percent")

while True:
    # take input from user
    choice = input("Enter choice(1/2/3/4/5/6): ")

    # check if choice is one of the four options
    if choice in('1', '2' , '3', '4'):
        try:
            num1 = float(input("Enter first number: "))
            num2 = float(input("Enter second number: "))
        except ValueError:
            print("Invalid input, please enter a number.")
            continue

        if choice == '1':
            print(num1, "+", num2, "=", add(num1, num2))
        elif choice == '2':
            print(num1, "-", num2, "=", subtract(num1, num2))
        elif choice == '3' :
            print(num1, "*", num2, "=", multiply(num1, num2))
        elif choice == "4":
            print(num1, "/", num2, "=", divide(num1, num2)) 

        # check if user wants another calculation
        # break the while loop if answer in no
        next_calculation = input("let's do next calculation? (yes/no):")
        if next_calculation == "no":
            break

    elif choice in ('5'):
        try:
            num1 = float(input("Enter first number: "))
        except ValueError:
            print("Invalid input, please enter a number.")
            continue
        if choice=='5':
            even_odd(num1)

    elif choice in ('6'):
        try:
            num1 = float(input("Enter the first number: "))
            num2 = float(input("Enter the second number: "))
        except ValueError:
            print("Invalid input, please enter a number.")
            continue
        if choice == '6':
            print(num1, "/", num2, "* 100 =", percent(num1, num2))
                  

    
    else:
        print("invalid operation")                       