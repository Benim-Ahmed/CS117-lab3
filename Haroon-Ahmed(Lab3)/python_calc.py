def add(a, b):
    return a + b

def subtract(a, b):
    return a - b

def multiply(a, b):
    return a * b

def divide(a, b):
    return a / b

def check_even_odd(n):
    if n % 2 == 0:
      return "Even"
    else:
       return "Odd"
def percentage(a, b):
    return (a / b) * 100
def main():
    while True:
        print("<----- Feature-Rich Calculator ----->")
        print("1. Addition")
        print("2. Subtraction")
        print("3. Multiplication")
        print("4. Division")
        print("5. Check Even/Odd")
        print("6. Percentage")
        print("7. Exit")
        choice = input("Enter your choice (1-7): ")
        if choice == '7':
            print("Exiting... Goodbye!")
            break
        if choice in ['1','2','3','4','6']:
                
                num1 = float(input("Enter first number: "))
                num2 = float(input("Enter second number(except 0): "))

                if choice == '1':
                    print("Result:", add(num1, num2))
                elif choice == '2':
                 print("Result:", subtract(num1, num2))
                elif choice == '3':
                 print("Result:", multiply(num1, num2))
                elif choice == '4':
                 print("Result:", divide(num1, num2))
                elif choice == '6':
                 print(f"{num1} is {percentage(num1, num2)}% of {num2}")
                elif choice == '5':
                 num = int(input("Enter a number: ")) 
                 print(f"{num} is {check_even_odd(num)}")
                else:
                 print("Invalid choice!Please enter a number from 1 to 7.")
if __name__ == "__main__":
    main()