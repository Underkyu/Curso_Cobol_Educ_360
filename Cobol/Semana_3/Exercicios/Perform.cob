      ******************************************************************
      * Author:
      * Date:
      * Purpose: Learn about good practices and the comand perform
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXPERFORM.

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
       0001-PRINCIPAL             SECTION.
           PERFORM 0100-INICIALIZAR.
           PERFORM 0200-PROCESSAR 2 TIMES.
           PERFORM 0300-FINALIZAR.
       0100-INICIALIZAR           SECTION.
       DISPLAY "Digite a nota 1".
           ACCEPT WRK-NOTA1.

       DISPLAY "Digite a nota 2".
           ACCEPT WRK-NOTA2.

       COMPUTE WRK-MEDIA = (WRK-NOTA1+WRK-NOTA2)/2.

       0200-PROCESSAR             SECTION.
           DISPLAY "Media: " WRK-MEDIA.

           IF WRK-MEDIA GREATER OR EQUAL 7
               DISPLAY "Aprovado"
           ELSE
               DISPLAY "Reprovado"
           END-IF.
               PERFORM 0100-INICIALIZAR.
       0300-FINALIZAR             SECTION.
            CONTINUE.
            STOP RUN.
       END PROGRAM EXPERFORM.
