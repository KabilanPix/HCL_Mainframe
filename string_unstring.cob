       IDENTIFICATION DIVISION.
       PROGRAM-ID. SUMMA.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-SUMMA PIC X(9) VALUE "HELLO,BOY".
       01 WS-INDI PIC X(9).

       01 WS-FULL PIC X(9).

       01 WS-PTR PIC 99 VALUE 1.
       01 WS-TALLY PIC 99 VALUE 0.

       PROCEDURE DIVISION.
           
           UNSTRING WS-SUMMA DELIMITED BY ","
              INTO WS-INDI
                   WS-FULL 
              WITH POINTER WS-PTR
              TALLYING IN WS-TALLY
           END-UNSTRING.
           DISPLAY WS-INDI
           DISPLAY WS-FULL
           DISPLAY WS-PTR
           DISPLAY WS-TALLY
           STOP RUN.


    