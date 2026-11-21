       IDENTIFICATION DIVISION.
       PROGRAM-ID. HELLO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-BALANCE PIC 9(5) VALUE 10000.
       01 WS-DEPOSIT PIC 9(5).
       01 WS-WITHDRAW PIC 9(5).
       01 WS-CHOICE PIC x.

       PROCEDURE DIVISION.
           DISPLAY "1.BALANCE"
           DISPLAY "2.DEPOSIT"
           DISPLAY "3.WITHDRAW"
           DISPLAY "4.EXIT"
    
           DISPLAY "ENTER CHOICE"
           ACCEPT WS-CHOICE
    
           EVALUATE WS-CHOICE
               WHEN "1" 
                  DISPLAY WS-BALANCE
               WHEN "2"
                  DISPLAY "ENTER DEPOSIT AMOUNT:"
                  ACCEPT WS-DEPOSIT
                  ADD WS-DEPOSIT TO WS-BALANCE
                  DISPLAY "NEW BALANCE" WS-BALANCE
               WHEN "3"
                  DISPLAY "ENTER WITHDRAW AMOUNT"
                  ACCEPT WS-WITHDRAW
                  IF WS-WITHDRAW < WS-BALANCE
                     SUBTRACT WS-WITHDRAW FROM WS-BALANCE
                     DISPLAY "NEW BALANCE" WS-BALANCE
                  ELSE
                     DISPLAY "INSUFFICIENT BALANCE"
                  END-IF
               WHEN "4"
                  DISPLAY "THANK YOU"
               WHEN OTHER
                  DISPLAY "INVALID CHOICE"
           END-EVALUATE
           STOP RUN.
