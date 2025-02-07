 ******************************************************************
      * Author:
      * Date:
      * Purpose:Calcular o IMC
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXPROPOSTO02.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       77  WRK-PESO     PIC 9(10)V99 VALUE ZEROS.
       77  WRK-ALTURA     PIC 9(10)V99 VALUE ZEROS.
       77  WRK-IMC     PIC 9(10)V99 VALUE ZEROS.
       77  WRK-IMCED     PIC Z(7)9,99 VALUE ZEROS.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

      *0001-PROCESSAMENTO
       DISPLAY "Digite a sua altura"
           ACCEPT WRK-ALTURA.
       DISPLAY "Digite o seu peso"
           ACCEPT WRK-PESO.
       COMPUTE WRK-IMC = WRK-PESO / (WRK-ALTURA * WRK-ALTURA).
       MOVE WRK-IMC TO WRK-IMCED
      *0002-DISPLAY
       DISPLAY "O seu IMC e"WRK-IMCED.
            STOP RUN.
       END PROGRAM EXPROPOSTO02.
