INCLUDE Irvine32.inc

.data
menu BYTE "***** ALU SIMULATOR *****",0dh,0ah,
     "1. Addition",0dh,0ah,
     "2. Subtraction",0dh,0ah,
     "3. Multiplication",0dh,0ah,
     "4. Division",0dh,0ah,
     "5. AND",0dh,0ah,
     "6. OR",0dh,0ah,
     "7. XOR",0dh,0ah,
     "8. Shift Left",0dh,0ah,
     "9. Shift Right",0dh,0ah,
     "Enter choice: ",0

msg1 BYTE "Enter first number: ",0
msg2 BYTE "Enter second number: ",0
resultMsg BYTE "Result = ",0

choice DWORD ?
val1   DWORD ?
val2   DWORD ?

.code
main PROC

    ; show menu
    mov edx, OFFSET menu
    call WriteString
    call ReadInt
    mov choice, eax

    ; input first number
    mov edx, OFFSET msg1
    call WriteString
    call ReadInt
    mov val1, eax

    ; input second number
    mov edx, OFFSET msg2
    call WriteString
    call ReadInt
    mov val2, eax

    mov eax, val1
    mov ebx, val2

    cmp choice,1
    je ADD_OP
    cmp choice,2
    je SUB_OP
    cmp choice,3
    je MUL_OP
    cmp choice,4
    je DIV_OP
    cmp choice,5
    je AND_OP
    cmp choice,6
    je OR_OP
    cmp choice,7
    je XOR_OP
    cmp choice,8
    je SHL_OP
    cmp choice,9
    je SHR_OP

    jmp EXIT_PROGRAM

ADD_OP:
    add eax, ebx
    jmp SHOW

SUB_OP:
    sub eax, ebx
    jmp SHOW

MUL_OP:
    mul ebx
    jmp SHOW

DIV_OP:
    mov edx, 0
    div ebx
    jmp SHOW

AND_OP:
    and eax, ebx
    jmp SHOW

OR_OP:
    or eax, ebx
    jmp SHOW

XOR_OP:
    xor eax, ebx
    jmp SHOW

SHL_OP:
    shl eax, 1
    jmp SHOW

SHR_OP:
    shr eax, 1
    jmp SHOW

SHOW:
    mov edx, OFFSET resultMsg
    call WriteString
    call WriteInt
    call Crlf

EXIT_PROGRAM:
    exit

main ENDP
END main
