      ******************************************************************
      * Author:
      * Date:
      * Purpose: Learn about group variables
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMA06.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01 WRK-DATA.
           05 WRK-CODIGO PIC 9(04) VALUE ZEROS.
           05 WRK-NOME PIC X(15) VALUE SPACES.
           05 WRK-SALARIO PIC 9(06) VALUE ZEROS.


       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
       0100-PROCESSAMENTO           SECTION.
       DISPLAY "Digite a entrada"
           ACCEPT WRK-DATA.

       0200-DISPLAY                  SECTION.
           DISPLAY "Codigo:" WRK-CODIGO OF WRK-DATA
                   " Nome:" WRK-NOME OF WRK-DATA
                   " Salario:" WRK-SALARIO OF WRK-DATA.
            STOP RUN.
       END PROGRAM PROGRAMA06.
