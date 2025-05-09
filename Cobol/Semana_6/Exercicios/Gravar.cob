      ******************************************************************
      * Author:
      * Date:
      * Purpose: Learn about how to write in arquives
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
       01 REG-CLIENTES.
           05 REG-ID        PIC 9(04).
           05 REG-NOME      PIC 9(20).
           05 REG-TELEFONE  PIC 9(11).

       WORKING-STORAGE SECTION.
           77 FS-CLIENTES PIC X(02) VALUE ZEROS.
           77 WRK-MSG-ERRO PIC X(30) VALUE SPACES.
       PROCEDURE DIVISION.
       0001-PRINCIPAL             SECTION.
           PERFORM 0100-INICIALIZAR.
           IF FS-CLIENTES EQUAL 00
               PERFORM 0200-PROCESSAR
               PERFORM 0300-FINALIZAR
           END-IF.
           STOP RUN.

       0100-INICIALIZAR           SECTION.
           OPEN OUTPUT CLIENTES.
           IF FS-CLIENTES EQUAL 35
                   MOVE "ARQUIVO NAO FOI ABERTO" TO WRK-MSG-ERRO
                   PERFORM 9000-TRATA-ERRO
           ELSE
                  CONTINUE.
       0200-PROCESSAR             SECTION.
           MOVE 0001                   TO REG-ID.
           MOVE 'Flower              ' TO REG-NOME.
           MOVE '11979797373'          TO REG-TELEFONE.
           WRITE REG-CLIENTES.
       0300-FINALIZAR             SECTION.
           DISPLAY "FIM PROGRAMA".
           CLOSE CLIENTES.
       9000-TRATA-ERRO            SECTION.
           DISPLAY WRK-MSG-ERRO.
           GOBACK.
       END PROGRAM ARQUIVOS.
