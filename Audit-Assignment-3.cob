       
       IDENTIFICATION DIVISION.
       PROGRAM-ID. APPEND-AUDIT.
       
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
       
           SELECT DAILY-AUDIT-LOG
               ASSIGN TO "DAILY-AUDIT-LOG.txt"
               ORGANIZATION IS LINE SEQUENTIAL
               ACCESS MODE IS SEQUENTIAL
               FILE STATUS IS WS-AUD-STATUS.
       
       DATA DIVISION.
       FILE SECTION.
       
       FD DAILY-AUDIT-LOG.
       01 AUDIT-REC PIC X(30).
       
       WORKING-STORAGE SECTION.
       
       01 WS-AUD-STATUS PIC X(02).
       01 WS-NEW-TXN PIC X(30).
       
       PROCEDURE DIVISION.
           MOVE "TXN1003|890.50" TO WS-NEW-TXN.
           OPEN EXTEND DAILY-AUDIT-LOG.
           IF WS-AUD-STATUS = '00'
               WRITE AUDIT-REC FROM WS-NEW-TXN
               IF WS-AUD-STATUS = '00'
                   DISPLAY "TRANSACTION APPENDED SUCCESSFULLY"
               ELSE
                   DISPLAY "WRITE ERROR: " WS-AUD-STATUS
               END-IF
       
           ELSE
               DISPLAY "FILE OPEN ERROR: " WS-AUD-STATUS
           END-IF.
           CLOSE DAILY-AUDIT-LOG.
           STOP RUN.
       