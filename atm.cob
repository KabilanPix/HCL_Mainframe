      
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ATM.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       
       01 WS-CHOICE PIC X.
          88 EXIT-PROGRAM VALUE '4'.
       
       01 WS-DEPOSIT PIC 9(5).
       01 WS-WITHDRAW PIC 9(5).
       01 WS-BALANCE PIC 9(6) VALUE 100000.
       
       PROCEDURE DIVISION.
       
           PERFORM UNTIL EXIT-PROGRAM
       
              DISPLAY " "
              DISPLAY "1. Check Balance"
              DISPLAY "2. Deposit"
              DISPLAY "3. Withdraw"
              DISPLAY "4. Exit"
              DISPLAY "Enter an option (1-4):"
       
              ACCEPT WS-CHOICE
       
              IF EXIT-PROGRAM
                 DISPLAY "Thank you for using our ATM!"
       
              ELSE
                 IF WS-CHOICE = '1'
       
                    DISPLAY "Current Balance: " WS-BALANCE
       
                 ELSE
                    IF WS-CHOICE = '2'
       
                       DISPLAY "Enter amount to deposit:"
                       ACCEPT WS-DEPOSIT
       
                       IF WS-DEPOSIT > 0
                          ADD WS-DEPOSIT TO WS-BALANCE
                          DISPLAY "Deposit Successful!"
                          DISPLAY "New Balance: " WS-BALANCE
                       ELSE
                          DISPLAY "Invalid Deposit Amount"
                       END-IF
       
                    ELSE
                       IF WS-CHOICE = '3'
       
                          DISPLAY "Enter amount to withdraw:"
                          ACCEPT WS-WITHDRAW
       
                          IF WS-WITHDRAW > 0
                             IF WS-WITHDRAW <= WS-BALANCE
                                SUBTRACT WS-WITHDRAW FROM WS-BALANCE
                                DISPLAY "Withdrawal Successful!"
                                DISPLAY "New Balance: " WS-BALANCE
                             ELSE
                                DISPLAY "Insufficient Balance"
                             END-IF
                          ELSE
                             DISPLAY "Invalid Withdrawal Amount"
                          END-IF
                       ELSE
                          DISPLAY "Invalid Choice"
                       END-IF
                    END-IF
                 END-IF
              END-IF
       
           END-PERFORM.
       
           STOP RUN.
 