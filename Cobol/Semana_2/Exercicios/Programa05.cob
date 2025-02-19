      ******************************************************************
      * Author:
      * Date:
      * Purpose: Learn about gruop variables
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMA05.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01 WRK-DATA.
           05 WRK-ANO PIC X(04) VALUE SPACES.
           05 WRK-MES PIC X(02) VALUE SPACES.
           05 WRK-DIA PIC X(02) VALUE SPACES.

       01 WRK-DATA2.
           05 WRK-DIA PIC X(02) VALUE SPACES.
           05 FILLER PIC X(01) VALUE "/".
           05 WRK-MES PIC X(02) VALUE SPACES.
           05 FILLER PIC X(01) VALUE "/".
           05 WRK-ANO PIC X(04) VALUE SPACES.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
       0100-PROCESSAMENTO           SECTION.
           ACCEPT WRK-DATA FROM DATE YYYYMMDD.
           MOVE CORR WRK-DATA TO WRK-DATA2.

       0200-DISPLAY                  SECTION.
           DISPLAY "Data completa " WRK-DATA.
           DISPLAY "Dia:" WRK-DIA OF WRK-DATA
                   " Mes:" WRK-MES OF WRK-DATA
                   " Ano:" WRK-ANO OF WRK-DATA.
           DISPLAY "Data completa 2 " WRK-DATA2.
            STOP RUN.
       END PROGRAM PROGRAMA05.
