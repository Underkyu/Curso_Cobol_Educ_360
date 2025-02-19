      ******************************************************************
      * Author:
      * Date:
      * Purpose: Practice my knowloge
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXPROPOSTO1.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.


       77 WRK-SALARIO-BRUTO PIC 9(05)V99 VALUE ZEROS.
       77 WRK-SALARIO-FINAL PIC 9(05)V99 VALUE ZEROS.
       77 WRK-IR            PIC 9(05)V99 VALUE ZEROS.

       77 WRK-SALARIO-BRUTOED PIC ZZZ.ZZZ.ZZZ,99 VALUE ZEROS.
       77 WRK-SALARIO-FINALED PIC ZZZ.ZZZ.ZZZ,99 VALUE ZEROS.
       77 WRK-IRED PIC ZZZ.ZZZ.ZZZ,99 VALUE ZEROS.



       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
       0100-ENTRADA          SECTION.
           DISPLAY "Digite seu salario".
           ACCEPT WRK-SALARIO-BRUTO.

       0150-PROCESSAMENTO          SECTION.
           IF WRK-SALARIO-BRUTO GREATER OR EQUAL 1000
               COMPUTE WRK-IR = WRK-SALARIO-BRUTO * 0,15
           ELSE
               COMPUTE WRK-IR = WRK-SALARIO-BRUTO * 0,1
           END-IF.
               COMPUTE WRK-SALARIO-FINAL = WRK-SALARIO-BRUTO - WRK-IR.

           MOVE WRK-SALARIO-BRUTO TO WRK-SALARIO-BRUTOED.
           MOVE WRK-SALARIO-FINAL TO WRK-SALARIO-FINALED.
           MOVE WRK-IR TO WRK-IRED.

       0200-DISPLAY                  SECTION.
           DISPLAY "SALARIO BRUTO: " WRK-SALARIO-BRUTOED.
           DISPLAY "IR: " WRK-IRED.
           DISPLAY "SALARIO FINAL: " WRK-SALARIO-FINALED.



            STOP RUN.
       END PROGRAM EXPROPOSTO1 .
