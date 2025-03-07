      ******************************************************************
      * Author:
      * Date:
      * Purpose: Learn about arquives
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ARQUIVOS.


       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
       SELECT CLIENTES ASSIGN TO
       "C:\Users\GAMER\Curso_Cobol_Educ_360\Cobol\Semana_5\Data\CLI.DAT"
           FILE STATUS IS FS-CLIENTES.
       DATA DIVISION.
       FILE SECTION.
       FD CLIENTES.
       01 REF-CLIENTES.
           05 REG-ID        PIC 9(04).
           05 REG-NOME      PIC 9(20).
           05 RED-TELEFONE  PIC 9(11).

       WORKING-STORAGE SECTION.
           77 FS-CLIENTES PIC X(02).
       PROCEDURE DIVISION.
       0001-PRINCIPAL             SECTION.
           PERFORM 0100-INICIALIZAR.
           PERFORM 0200-PROCESSAR.
           PERFORM 0300-FINALIZAR.
           STOP RUN.

       0100-INICIALIZAR           SECTION.
           OPEN INPUT CLIENTES.
           IF FS-CLIENTES EQUAL 35
                   DISPLAY "ARQUIVO NAO FOI ABERTO"
           ELSE
                   DISPLAY "STATUS: " FS-CLIENTES.
           CLOSE CLIENTES.
       0200-PROCESSAR             SECTION.
           CONTINUE.
       0300-FINALIZAR             SECTION.
           DISPLAY "FIM PROGRAMA".
           CONTINUE.
       END PROGRAM ARQUIVOS.
