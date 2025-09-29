# CS117-lab3
Assembly Reflections:
Registers & instructions: I noticed that registers are like small storage boxes inside the CPU which hold the data on which instructions are going to be performed. Instructions are very low-level and specific (like mov, add, sub).
Difference from Python: Coding in Assembly feels very detailed as it is low level while Python is higher-level and closer to human language. In Assembly,we manage memory and operations manually, but in Python most of that is handled for us.
Python Reflections:
Why easier/faster: Python is easier because it hides the hardware details, lets us write fewer lines, and gives built-in tools for math and input/output.We don’t need to think about registers or memory.
Features for abstraction: Variables store data without worrying about memory, functions group reusable logic, and loops let us repeat actions without writing the same code again. These make programs simpler and more organized.
Comparison Table
  |     Feature     | Assembly Example | Python Example |                                                  Notes                                                      |
  |-----------------|------------------|----------------|-------------------------------------------------------------------------------------------------------      |
  |Variable storage |  Register (EAX)  |     x = 5      |In Assembly, variables are stored in CPU registers like EAX; in Python, variables are stored in memory and      |                 |                  |                |                                         managed automatically.                                             |
  | Printing output |     INT 21h      |     print()    |INT 21h is a DOS interrupt for system services like printing to screen; print() is a built-in function in py.   |                 |    ADD AX, BX    |      x + y     |Assembly performs arithmetic directly with registers; Python uses expressions with variables.                |
