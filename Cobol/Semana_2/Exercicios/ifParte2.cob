      ******************************************************************
      * Author:
      * Date:
      * Purpose: Learn about the if clause
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. IFPARTE2.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.


       77 WRK-VALOR PIC 9(05)V99 VALUE ZEROS.
       77 WRK-FRETE PIC 9(05)V99 VALUE ZEROS.
       77 WRK-ESTADO PIC X(02)  VALUE SPACES.

       77 WRK-VALORED PIC ZZZ.ZZZ.ZZZ,99 VALUE ZEROS.
       77 WRK-FRETEED PIC ZZZ.ZZZ.ZZZ,99 VALUE ZEROS.



       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
       0100-ENTRADA          SECTION.
           DISPLAY "O valor do produto".
           ACCEPT WRK-VALOR.

           DISPLAY "Digite o estado em que voce mora (SP/RJ/ES)".
           ACCEPT WRK-ESTADO.

       0150-PROCESSAMENTO          SECTION.
           IF WRK-ESTADO EQUAL "SP"
               COMPUTE WRK-FRETE = WRK-VALOR *0,1
           END-IF.
           IF WRK-ESTADO EQUAL "RJ"
               COMPUTE WRK-FRETE = WRK-VALOR *0,15
           END-IF.
           IF WRK-ESTADO EQUAL "ES"
               COMPUTE WRK-FRETE = WRK-VALOR *0,2
           END-IF.

           MOVE WRK-VALOR TO WRK-VALORED.
           MOVE WRK-FRETE TO WRK-FRETEED.

           COMPUTE WRK-VALOR = WRK-VALOR + WRK-FRETE.
       0200-DISPLAY                  SECTION.
           DISPLAY "VALOR FINAL: " WRK-VALORED.
           IF WRK-FRETE GREATER 0
              DISPLAY "FRETE: " WRK-FRETEED
              ELSE
              DISPLAY "ESTADO INVALIDO"
           END-IF


            STOP RUN.
       END PROGRAM IFPARTE2.
