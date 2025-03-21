      ******************************************************************
      * Author:
      * Date:
      * Purpose: Learn about how to search for a register in an arquive
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
       "C:\Users\GAMER\Curso_Cobol_Educ_360\Cobol\Semana_6\Data\CLI.DAT"
           FILE STATUS IS FS-CLIENTES.
       DATA DIVISION.
       FILE SECTION.
       FD CLIENTES.
       01 REF-CLIENTES.
           05 REG-ID        PIC 9(04).
           05 REG-NOME      PIC 9(20).
           05 REG-TELEFONE  PIC 9(11).

       WORKING-STORAGE SECTION.
           77 FS-CLIENTES PIC X(02) VALUE ZEROS.
           77 WRK-MSG-ERRO PIC X(30) VALUE SPACES.
           77 WRK-ESTATISTICA PIC 9(04) VALUE ZEROS.
       PROCEDURE DIVISION.
       0001-PRINCIPAL             SECTION.
           PERFORM 0100-INICIALIZAR.
           IF FS-CLIENTES EQUAL 00
               PERFORM 0200-PROCESSAR
               PERFORM 0300-FINALIZAR
           END-IF.
           STOP RUN.

       0100-INICIALIZAR           SECTION.
           OPEN INPUT CLIENTES.
           IF FS-CLIENTES EQUAL 35
                   MOVE "ARQUIVO NAO FOI ABERTO" TO WRK-MSG-ERRO
                   PERFORM 9000-TRATA-ERRO
           END-IF.
       0200-PROCESSAR             SECTION.
           READ CLIENTES
           IF FS-CLIENTES < 1
            PERFORM UNTIL FS-CLIENTES NOT EQUAL 00
             ADD 1 TO WRK-ESTATISTICA

             DISPLAY "STATUS: " FS-CLIENTES
             DISPLAY "ID.... " REG-ID
             DISPLAY "NOME.. " REG-NOME
             DISPLAY "TELE.. " REG-TELEFONE
             READ CLIENTES
           END-PERFORM
           ELSE
               DISPLAY "ARQUIVO VAZIO"
           END-IF.
       0300-FINALIZAR             SECTION.
           DISPLAY "FIM PROGRAMA".
           PERFORM 0310-ESTATISTICA.
           CLOSE CLIENTES.
       0310-ESTATISTICA           SECTION.
           DISPLAY "REGISTROS LIDOS: " WRK-ESTATISTICA.
       9000-TRATA-ERRO.
           DISPLAY WRK-MSG-ERRO.
           GOBACK.
       END PROGRAM ARQUIVOS.
