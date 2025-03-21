      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT CLIENTES ASSIGN TO
       "C:\Users\GAMER\Curso_Cobol_Educ_360\Cobol\Semana_7\Data\CLI.DAT"
           FILE STATUS IS FS-CLIENTES.
       DATA DIVISION.
       FILE SECTION.
       FD CLIENTES.
       01 REG-CLIENTES.
           05 REG-ID        PIC 9(04).
           05 REG-NOME      PIC X(20).
           05 REG-TELEFONE  PIC 9(11).

       WORKING-STORAGE SECTION.
           77 FS-CLIENTES PIC 9(03) VALUE ZEROS.
           77 WRK-MSG-ERRO PIC X(30) VALUE SPACES.

      *    Variaveis de entrada
           77 WRK-ID PIC 9(04) VALUE ZEROS.
           77 WRK-NOME      PIC X(20) VALUE SPACES.
           77 WRK-TELEFONE  PIC 9(11) VALUE ZEROS.
       PROCEDURE DIVISION.
       0001-PRINCIPAL             SECTION.
           PERFORM 0100-INICIALIZAR.
           IF FS-CLIENTES EQUAL 00
               PERFORM 0200-PROCESSAR
               PERFORM 0300-FINALIZAR
           END-IF.
           STOP RUN.
       0100-INICIALIZAR           SECTION.
           OPEN EXTEND CLIENTES.
           IF FS-CLIENTES EQUAL 35
                   MOVE "ARQUIVO NAO FOI ABERTO" TO WRK-MSG-ERRO
                   PERFORM 9000-TRATA-ERRO
           ELSE
                  CONTINUE.
       0200-PROCESSAR             SECTION.
           DISPLAY "Qual seu id?".
           ACCEPT WRK-ID.

           DISPLAY "Qual seu nome?".
           ACCEPT WRK-NOME.

           DISPLAY "Qual seu telefone?".
           ACCEPT WRK-TELEFONE.

           MOVE WRK-ID       TO REG-ID.
           MOVE WRK-NOME     TO REG-NOME.
           MOVE WRK-TELEFONE TO REG-TELEFONE.
           WRITE REG-CLIENTES.
       0300-FINALIZAR             SECTION.
           DISPLAY "FIM PROGRAMA".
           CLOSE CLIENTES.
       9000-TRATA-ERRO            SECTION.
           DISPLAY WRK-MSG-ERRO.
           GOBACK.
       END PROGRAM YOUR-PROGRAM-NAME.
