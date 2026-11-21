       IDENTIFICATION DIVISION.
       PROGRAM-ID. HELLO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-Input PIC S9(5).

       PROCEDURE DIVISION.
           DISPLAY "Enter the amount:"
    
           ACCEPT WS-Input
    
           IF WS-Input >=100 AND WS-Input <=50000
               DISPLAY "ACCEPT"
           ELSE
               DISPLAY "REJECT" 
           END-IF. 
    
           STOP RUN.


