      ******************************************************************
      * Author:
      * Date:
      * Purpose: Main modele of DataMEs
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRINCIPAL.


       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WRK-DATA PIC X(40).
       PROCEDURE DIVISION.
       0001-PRINCIPAL             SECTION.
           CALL "DATAMES" USING WRK-DATA.
           DISPLAY WRK-DATA.
           STOP RUN.
       END PROGRAM PRINCIPAL.
