      ******************************************************************
      * Author:
      * Date:
      * Purpose: Learn about the evaluate clause
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EVALUATE2.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.


       77 WRK-NOTA1 PIC 9(02)V99 VALUE ZEROS.
       77 WRK-NOTA2 PIC 9(02)V99 VALUE ZEROS.

       77 WRK-MEDIA PIC 9(02)V99 VALUE ZEROS.


       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
       0100-PROCESSAMENTO           SECTION.
       DISPLAY "Digite a nota 1".
           ACCEPT WRK-NOTA1.

       DISPLAY "Digite a nota 2".
           ACCEPT WRK-NOTA2.

       COMPUTE WRK-MEDIA = (WRK-NOTA1+WRK-NOTA2)/2.

       0200-DISPLAY                  SECTION.
           DISPLAY "Media: " WRK-MEDIA.

           EVALUATE WRK-MEDIA
               WHEN 6 THRU 10
                   DISPLAY "Aprovado"
               WHEN OTHER
                   DISPLAY "Reprovado"
           END-EVALUATE.
            STOP RUN.
       END PROGRAM EVALUATE2.
