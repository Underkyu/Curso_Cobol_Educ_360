      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Goals: make a movie management system
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       77 ESCOLHA PIC 9(1).

       SCREEN SECTION.
       01 TELA.
           05 LIMPA-TELA.
               10 BLANK SCREEN.
               10 LINE 01 COLUMN 01 PIC X(20) ERASE EOL
               BACKGROUND-COLOR 2 FROM "FILMES".

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY TELA.
            ACCEPT ESCOLHA AT 1610.
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
