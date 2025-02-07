 ******************************************************************
      * Author:
      * Date:
      * Purpose:Fazer conversão de real para dolares
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXPROPOSTO01.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       77  WRK-COTACAO     PIC 9(10)V99 VALUE ZEROS.
       77  WRK-DOLARES     PIC 9(10) VALUE ZEROS.
       77  WRK-REAL     PIC 9(10)V99 VALUE ZEROS.
       77  WRK-REALED     PIC Z(7)9,99 VALUE ZEROS.
       77  WRK-DOLARESED     PIC Z(7)9,99 VALUE ZEROS.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

      *0001-PROCESSAMENTO
       DISPLAY "Digite a cotacao do dolar"
           ACCEPT WRK-COTACAO.
       DISPLAY "Digite quantos dolares voce tem"
           ACCEPT WRK-DOLARES.
       COMPUTE WRK-REAL = WRK-COTACAO * WRK-DOLARES.
       MOVE WRK-REAL TO WRK-REALED
       MOVE WRK-DOLARES TO WRK-DOLARESED
      *0002-DISPLAY
       DISPLAY WRK-DOLARESED " dolares ="WRK-REALED" reais".
            STOP RUN.
       END PROGRAM EXPROPOSTO01.
