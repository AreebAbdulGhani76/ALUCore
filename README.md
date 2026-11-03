# ALUCore
### Interactive Arithmetic Logic Unit Simulator Using Assembly Language

## Overview

ALUCore is an Assembly Language-based project that simulates the basic operations of an Arithmetic Logic Unit (ALU).

The project is developed using MASM Assembly Language and the Irvine32 library. It provides a menu-driven interface that allows users to perform arithmetic, logical, and bitwise shift operations by entering two integer values.

The program takes user input, executes the selected operation using Assembly instructions, and displays the calculated result.

## Features

The simulator supports the following nine operations:

### Arithmetic Operations
- Addition
- Subtraction
- Multiplication
- Division

### Logical Operations
- AND
- OR
- XOR

### Bitwise Shift Operations
- Shift Left (SHL)
- Shift Right (SHR)

## Technologies Used

| Technology | Purpose |
|---|---|
| MASM | Assembly Language development |
| Irvine32.inc | Input and output procedures |
| Visual Studio | Development environment |
| x86 Assembly | Low-level processor instructions |

## How It Works

1. The program displays a menu containing nine ALU operations.
2. The user selects an operation.
3. The program asks for the first integer.
4. The program asks for the second integer.
5. The selected operation is executed using Assembly instructions.
6. The calculated result is displayed on the screen.

## Assembly Instructions Used

| Instruction | Function |
|---|---|
| ADD | Performs addition |
| SUB | Performs subtraction |
| MUL | Performs unsigned multiplication |
| DIV | Performs unsigned division |
| AND | Performs bitwise AND |
| OR | Performs bitwise OR |
| XOR | Performs bitwise XOR |
| SHL | Shifts bits to the left |
| SHR | Shifts bits to the right |
| CMP | Compares values |
| JE | Jumps when values are equal |
| JMP | Performs unconditional jump |

## Project Structure

```text
ALUCore/
│
├── ALUCore.asm
└── README.md
```

## How to Run

1. Install Visual Studio with MASM support.
2. Make sure the Irvine32 library is properly configured.
3. Create an Assembly Language project.
4. Add the ALUCore.asm source file.
5. Build and run the project.
6. Select an operation from the menu.
7. Enter the required integer values.
8. View the result.

## Sample Output

```text
***** ALU SIMULATOR *****

1. Addition
2. Subtraction
3. Multiplication
4. Division
5. AND
6. OR
7. XOR
8. Shift Left
9. Shift Right

Enter choice: 1

Enter first number: 20
Enter second number: 10

Result = 30
```

## Learning Objectives

- Understand basic Assembly Language programming.
- Learn how arithmetic operations work at processor level.
- Understand logical and bitwise operations.
- Practice conditional and unconditional jumps.
- Understand register-based calculations.
- Learn how to use the Irvine32 library for input and output.

## Current Limitations

- The program accepts integer inputs only.
- Division by zero is not currently handled.
- Invalid menu selections exit the program.
- Multiplication and division use unsigned operations.
- Shift operations always shift by one bit.
- The program does not currently implement signed multiplication or division handling.

## Future Improvements

- Add division-by-zero error handling.
- Add input validation.
- Support signed arithmetic operations.
- Add repeated calculations without restarting the program.
- Improve the menu interface.
- Display multiplication results using both EDX and EAX when necessary.

## Conclusion

ALUCore demonstrates the implementation of fundamental Arithmetic Logic Unit operations using x86 Assembly Language.

It provides practical experience with processor registers, arithmetic instructions, logical operations, bit manipulation, conditional jumps, and low-level programming concepts.

**Project Category:** Computer Organization and Assembly Language  
**Programming Language:** MASM Assembly  
**Library:** Irvine32
