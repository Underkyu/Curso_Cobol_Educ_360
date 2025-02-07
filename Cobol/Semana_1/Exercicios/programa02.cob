      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMA02.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       77  WRK-NOME     PIC X(30) VALUE SPACES.
       77  WRK-SALARIO     PIC 9(10)V99 VALUE ZEROS.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
       DISPLAY "Digite seu nome"
           ACCEPT WRK-NOME.
       DISPLAY "Digite seu salario"
           ACCEPT WRK-SALARIO.
       DISPLAY "Nome digitado " WRK-NOME "Salario Digitado " WRK-SALARIO.
            STOP RUN.
       END PROGRAM PROGRAMA02.
