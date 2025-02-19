      * Purpose: Learn about group variables
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. SOMA.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WRK-NUM1          PIC 9(04) VALUE ZEROS.
       01 WRK-NUM2          PIC 9(04) VALUE ZEROS.

       01 WRK-SOMA          PIC 9(04) VALUE ZEROS.
       01 WRK-SUBTRACAO     PIC Z(04) VALUE ZEROS.
       01 WRK-MULT          PIC Z(08) VALUE ZEROS.
       01 WRK-DIV           PIC Z(04) VALUE ZEROS.
       01 WRK-MEDIA         PIC Z(04) VALUE ZEROS.


       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
       0100-PROCESSAMENTO           SECTION.
       DISPLAY "Digite o primeiro numero".
           ACCEPT WRK-NUM1.

       DISPLAY "Digite o segundo numero".
           ACCEPT WRK-NUM2.

       ADD WRK-NUM1 WRK-NUM2 TO WRK-SOMA.
       SUBTRACT WRK-NUM2 FROM WRK-NUM1 GIVING WRK-SUBTRACAO.
       MULTIPLY WRK-NUM1 BY WRK-NUM2 GIVING WRK-MULT.
       DIVIDE WRK-NUM1 BY WRK-NUM2 GIVING WRK-DIV.
       COMPUTE WRK-MEDIA = (WRK-NUM1+WRK-NUM2)/2.

       0200-DISPLAY                  SECTION.
           DISPLAY "Soma: " WRK-SOMA.
           DISPLAY "Subtracao: " WRK-SUBTRACAO.
           DISPLAY "Multiplicacao: " WRK-MULT.
           DISPLAY "Divisao: " WRK-DIV.
            STOP RUN.
       END PROGRAM SOMA.
