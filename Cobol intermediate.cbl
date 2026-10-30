       IDENTIFICATION DIVISION.
       PROGRAM-ID. WITHDRAWAL-LIMITS.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WITHDRAWAL-AMOUNT PIC S9(9) VALUE ZERO.

       PROCEDURE DIVISION.
           ACCEPT WITHDRAWAL-AMOUNT

           IF WITHDRAWAL-AMOUNT < 100
               DISPLAY "REJECTED"
           ELSE
               IF WITHDRAWAL-AMOUNT > 50000
                   DISPLAY "REJECTED"
               ELSE
                   DISPLAY "ACCEPTED"
               END-IF
           END-IF

           STOP RUN.