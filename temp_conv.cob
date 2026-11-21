       
       IDENTIFICATION DIVISION.
       PROGRAM-ID. HELLO.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-TEMP PIC S9(5)V99.
       01 WS-OUT1 PIC -ZZZZ9.99.
       01 WS-CURR PIC S9(5)V99.
       01 WS-OUT2 PIC -ZZZZ9.99.
       
       01 WS-CHOICE PIC X.
       
       PROCEDURE DIVISION.
       
           DISPLAY "ENTER T FOR TEMP AND C FOR CURR"
           ACCEPT WS-CHOICE
           IF WS-CHOICE = "T"
       
              DISPLAY "ENTER THE TEMP IN CELSIUS"
              ACCEPT WS-TEMP
              COMPUTE WS-TEMP = (WS-TEMP * 9 / 5) + 32
              MOVE WS-TEMP TO WS-OUT1
              DISPLAY FUNCTION TRIM(WS-OUT1)
       
           ELSE
              IF WS-CHOICE = "C"
                 DISPLAY "ENTER THE CURR IN INR"
                 ACCEPT WS-CURR
                 COMPUTE WS-CURR = WS-CURR * 0.0096
                 MOVE WS-CURR TO WS-OUT2
                 DISPLAY FUNCTION TRIM(WS-OUT2)
              ELSE
                 DISPLAY "INVALID CHOICE"
              END-IF
           END-IF.
       
           STOP RUN.
       