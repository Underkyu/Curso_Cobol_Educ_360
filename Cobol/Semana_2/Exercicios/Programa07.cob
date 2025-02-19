      ******************************************************************
      * Author:
      * Date:
      * Purpose: Learn about group variables
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMA07.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01 WRK-DATA.
           05 WRK-NUM1 PIC 9(03) VALUE ZEROS.
           05 WRK-NUM2 PIC 9(03) VALUE ZEROS.

       77 WRK-RESULTADO PIC Z(06) VALUE ZEROS.


       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
       0100-PROCESSAMENTO           SECTION.
       DISPLAY "Digite a entrada".
           ACCEPT WRK-DATA.

       COMPUTE WRK-RESULTADO = WRK-NUM1 + WRK-NUM2.

       0200-DISPLAY                  SECTION.
           DISPLAY "Resultado: " WRK-RESULTADO
            STOP RUN.
       END PROGRAM PROGRAMA07.
