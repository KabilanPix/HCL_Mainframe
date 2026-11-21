       IDENTIFICATION DIVISION.
       PROGRAM-ID. READ-CUSTOMER.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
       
           SELECT CUSTOMER-FILE
           ASSIGN TO "./customer.txt"
           ORGANIZATION IS LINE SEQUENTIAL
           FILE STATUS IS WS-FILE-STATUS.

       DATA DIVISION.
       FILE SECTION.
       
       FD CUSTOMER-FILE.

       01 CUSTOMER-RECORD.
           05 CUST-ID PIC X(4).
           05 CUST-NAME PIC X(10).
           05 CUST-BALANCE PIC 9(7).

       WORKING-STORAGE SECTION.
       01 WS-EOF PIC X VALUE "N".
       01 WS-FILE-STATUS PIC XX.

       PROCEDURE DIVISION.
           OPEN INPUT CUSTOMER-FILE.
           
           IF WS-FILE-STATUS = "00"
              PERFORM UNTIL WS-EOF ="Y"
                 READ CUSTOMER-FILE 
                    AT END
                       MOVE "Y" TO WS-EOF
                    NOT AT END
                       DISPLAY "CUSTOMER ID: " CUST-ID
                       DISPLAY "CUSTOMER NAME: " CUST-NAME
                       DISPLAY "CUSTOMER BALANCE: " CUST-BALANCE
                 END-READ
               END-PERFORM
           ELSE
              DISPLAY "FILE OPEN ERROR: " WS-FILE-STATUS
           END-IF.
           CLOSE CUSTOMER-FILE.

           STOP RUN.
              