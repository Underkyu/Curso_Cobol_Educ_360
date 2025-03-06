   ******************************************************************
      * Author:
      * Date:
      * Purpose: Learn about good practices and the comand perform
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. VETORES.


       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.


       01 WRK-DATA.
           COPY "#bookdata".




       PROCEDURE DIVISION.
       0001-PRINCIPAL             SECTION.
           PERFORM 0100-INICIALIZAR.
           PERFORM 0200-PROCESSAR.
           PERFORM 0300-FINALIZAR.
       0100-INICIALIZAR           SECTION.
       ACCEPT WRK-DATA FROM DATE YYYYMMDD.

       0200-PROCESSAR             SECTION.
           DISPLAY WRK-DIA " DE " MESES(WRK-MES)
                           " DE " WRK-ANO.
       0300-FINALIZAR             SECTION.
            CONTINUE.
            STOP RUN.
       END PROGRAM VETORES.
