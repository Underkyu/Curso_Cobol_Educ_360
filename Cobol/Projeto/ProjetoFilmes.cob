      ******************************************************************
      * Author: Miguel Yudi Baba
      * Date:
      * Purpose:
      * Goals: make a movie management system
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROJETO-FILMES.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.

       SELECT FILMES ASSIGN TO
       'C:\Users\GAMER\Curso_Cobol_Educ_360\Cobol\Projeto\FILMES.DAT'
           ORGANIZATION IS INDEXED
           ACCESS MODE IS DYNAMIC
           FILE STATUS IS FILME-STATUS
           RECORD KEY IS CODFILME.

       SELECT FILMESSEQ ASSIGN TO
       'C:\Users\GAMER\Curso_Cobol_Educ_360\Cobol\Projeto\FILMES.DAT'
           ORGANIZATION IS INDEXED
           ACCESS MODE IS SEQUENTIAL
           FILE STATUS IS FILMESEQ-STATUS
           RECORD KEY IS CODFILMESQ.

       DATA DIVISION.
       FILE SECTION.
      *Definição dos campos do arquivo filmes
       FD FILMES.
       01 FILMES-REG.
           05 CODFILME         PIC 9(5).
           05 TITULO           PIC X(30).
           05 GENERO           PIC X(8).
           05 DURACAO          PIC 9(3).
           05 DISTRIBUIDORA    PIC X(15).

      *    Minha nota para o filme
           05 NOTA             PIC 9(2).

       FD FILMESSEQ.
       01 FILMESSEQ-REG.
           05 CODFILMESQ       PIC 9(5).
           05 TITULOSQ         PIC X(30).
           05 GENEROSQ         PIC X(8).
           05 DURACAOSQ        PIC 9(3).
           05 DISTRIBUIDORASQ  PIC X(15).

      *    Minha nota para o filme
           05 NOTASQ           PIC 9(2).


       WORKING-STORAGE SECTION.

       77 WRK-ESCOLHA           PIC X(1).
       77 WRK-MODULO            PIC X(10).
       77 FILME-STATUS          PIC 9(2).
       77 FILMESEQ-STATUS       PIC 9(2).
       77 WRK-ERRO              PIC X(30).
       77 WRK-TECLA             PIC 9(1) VALUE 1.
       77 WRK-CONTADOR-LINHA    PIC 9(4) VALUE 5.
       77 WRK-CONTADOR-COL      PIC 9(4) VALUE 0.

      *Variaveis usadas no sistema de páginas do relatorio
       77 WRK-CONT-REG             PIC 9(3) VALUE 0.
       77 WRK-NUM-PAG             PIC 9(3) VALUE 0.
       77 WRK-FLAG             PIC 9(1) VALUE 0.
       SCREEN SECTION.
      * Title in the top of the page
       01 TELA.
           05 LIMPA-TELA.
               10 BLANK SCREEN.
               10 LINE 01 COLUMN 01 PIC X(20) ERASE EOL
               BACKGROUND-COLOR 1.
               10 LINE 01 COLUMN 58 PIC X(20) ERASE EOL
               BACKGROUND-COLOR 1 FROM "FILMES".
               10 LINE 02 COLUMN 01 PIC X(20) ERASE EOL
               BACKGROUND-COLOR 1.
               10 LINE 02 COLUMN 58 PIC X(20) ERASE EOL
               BACKGROUND-COLOR 1 FROM WRK-MODULO.
      *Menu de opções
       01 MENU.
           05 LINE 5 COLUMN 55  VALUE '1 - Incluir'.
           05 LINE 6 COLUMN 55  VALUE '2 - Consultar'.
           05 LINE 7 COLUMN 55  VALUE '3 - Alterar'.
           05 LINE 8 COLUMN 55  VALUE '4 - Excluir'.
           05 LINE 9 COLUMN 55  VALUE '5 - Relatorio'.
           05 LINE 10 COLUMN 55 VALUE 'X - Sair'.
           05 LINE 11 COLUMN 55 VALUE 'Escolha:'.
           05 LINE 11 COLUMN 67 USING WRK-ESCOLHA.

      *Tela usada para mostrar erros
       01 TELA-ERRO.
           05 LINE 12 COLUMN 35 PIC X(30)
           BACKGROUND-COLOR 5 FROM WRK-ERRO.

      *Tela onde serão feitos os inputs de filmes
       01 TELA-REGISTRO.
           05 PK.
               10 LINE 5 COLUMN 35 VALUE 'Codigo: '.
               10 COLUMN PLUS 2 PIC 9(5) USING CODFILME.

           05 SS-DADOS.
               10 LINE 6 COLUMN 35 VALUE 'Titulo: '.
               10 COLUMN PLUS 2 PIC X(30) USING TITULO.

               10 LINE 7 COLUMN 35 VALUE 'Genero: '.
               10 COLUMN PLUS 2 PIC X(8) USING GENERO.

               10 LINE 8 COLUMN 35 VALUE 'Duracao: '.
               10 COLUMN PLUS 2 PIC 9(3) USING DURACAO.

               10 LINE 9 COLUMN 35 VALUE 'Distribuidora: '.
               10 COLUMN PLUS 2 PIC X(15) USING DISTRIBUIDORA.

               10 LINE 10 COLUMN 35 VALUE 'Nota: '.
               10 COLUMN PLUS 2 PIC 9(2) USING NOTA.

       PROCEDURE DIVISION.
       0001-PRINCIPAL SECTION.
           PERFORM 1000-INICIAR THRU 1100-MONTA-TELA.
           PERFORM 2000-PROCESSAR UNTIL WRK-ESCOLHA = 'X'
           OR WRK-ESCOLHA = 'x'.
           PERFORM 3000-FINALIZAR.
           STOP RUN.


       1000-INICIAR  SECTION.
      *    Abertura arquivo filmes
           OPEN I-O FILMES.
               IF FILME-STATUS = 35 THEN
                   OPEN OUTPUT FILMES
                   CLOSE FILMES
                   OPEN I-O FILMES
               END-IF.


       1100-MONTA-TELA  SECTION.
           MOVE "Menu" TO WRK-MODULO.


       2000-PROCESSAR  SECTION.
           PERFORM 3500-ZERA-VALORES
           DISPLAY TELA.
           ACCEPT MENU.
           EVALUATE WRK-ESCOLHA
               WHEN '1'
               PERFORM 5000-INCLUIR

               WHEN '2'
               PERFORM 6000-CONSULTAR

               WHEN '3'
               PERFORM 7000-ALTERAR

               WHEN '4'
               PERFORM 8000-EXCLUIR

               WHEN '5'
               PERFORM 9000-LISTAR

               WHEN OTHER
               IF WRK-ESCOLHA NOT EQUAL 'X' AND NOT EQUAL 'x'
                   DISPLAY 'Digite uma opcao valida' AT 1350
                   ACCEPT WRK-ESCOLHA AT 1374
               END-IF
               END-EVALUATE.

       3000-FINALIZAR  SECTION.
           CLOSE FILMES.
           CONTINUE.

      *Zera valores dos inputs
       3500-ZERA-VALORES  SECTION.
           MOVE ZERO TO CODFILME.
           MOVE SPACES TO TITULO.
           MOVE SPACES TO GENERO.
           MOVE ZERO TO DURACAO.
           MOVE SPACES TO DISTRIBUIDORA.
           MOVE ZERO TO NOTA.
           MOVE SPACES TO WRK-ERRO.
           MOVE 1 TO WRK-TECLA.
           MOVE SPACES TO WRK-ESCOLHA.
           MOVE 5 TO WRK-CONTADOR-LINHA.
           MOVE ZERO TO WRK-FLAG.
           MOVE ZERO TO WRK-CONT-REG.


       5000-INCLUIR  SECTION.
           MOVE "Incluir" TO WRK-MODULO.

           PERFORM UNTIL WRK-TECLA NOT EQUAL 1
           PERFORM 3500-ZERA-VALORES
           DISPLAY TELA
           ACCEPT TELA-REGISTRO

      *    Validações
           IF CODFILME = ZEROS OR TITULO = SPACES OR
              GENERO = SPACES OR DURACAO = ZEROS OR
              DISTRIBUIDORA = SPACES

              MOVE 'Campo vazio' TO WRK-ERRO
              DISPLAY TELA-ERRO  ERASE EOL

           ELSE IF NOTA > 10 OR NOTA < 1
              MOVE 'Nota invalida' TO WRK-ERRO
              DISPLAY TELA-ERRO  ERASE EOL

           ELSE

            DISPLAY "Deseja mesmo registrar? (S ou N)" AT 1235
                ACCEPT WRK-ESCOLHA AT 1268
                IF WRK-ESCOLHA = 'S' OR WRK-ESCOLHA = 's'
                   WRITE FILMES-REG
                     INVALID KEY
                     MOVE 'Esse registro ja existe' TO WRK-ERRO
                     DISPLAY TELA-ERRO  ERASE EOL

                     NOT INVALID KEY
                     DISPLAY 'Registro adicionado' AT 1235 ERASE EOL
                   END-WRITE

                ELSE
                   DISPLAY 'Registro nao adicionado' AT 1235 ERASE EOL
                END-IF

            END-IF
           END-IF

           DISPLAY "Deseja inserir outro registro 1(sim) ou 2(nao): "
           AT LINE 14 COLUMN 35
           ACCEPT WRK-TECLA AT 1484
           END-PERFORM.

       6000-CONSULTAR  SECTION.
           MOVE "Consultar" TO WRK-MODULO.

           PERFORM UNTIL WRK-TECLA NOT EQUAL 1
           DISPLAY TELA
           PERFORM 3500-ZERA-VALORES
           DISPLAY TELA-REGISTRO
           ACCEPT PK
           READ FILMES
               INVALID KEY
                   MOVE 'Nao encontrado' TO WRK-ERRO
                   DISPLAY TELA-ERRO ERASE EOL

               NOT INVALID KEY
                   DISPLAY SS-DADOS
           END-READ
            DISPLAY "Deseja consultar outro registro 1(sim) ou 2(nao): "
            AT LINE 14 COLUMN 35
            ACCEPT WRK-TECLA AT 1486
           END-PERFORM.

       7000-ALTERAR  SECTION.
           MOVE "Alterar" TO WRK-MODULO.
           PERFORM UNTIL WRK-TECLA NOT EQUAL 1
           PERFORM 3500-ZERA-VALORES
           DISPLAY TELA
           DISPLAY TELA-REGISTRO
           ACCEPT PK
           READ FILMES
           IF FILME-STATUS = 0
               ACCEPT SS-DADOS

      *    Validações
           IF CODFILME = ZEROS OR TITULO = SPACES OR
              GENERO = SPACES OR DURACAO = ZEROS OR
              DISTRIBUIDORA = SPACES

              MOVE 'Campo vazio' TO WRK-ERRO
              DISPLAY TELA-ERRO  ERASE EOL

           ELSE IF NOTA > 10 OR NOTA < 1
              MOVE 'Nota invalida' TO WRK-ERRO
              DISPLAY TELA-ERRO  ERASE EOL

               ELSE
                 DISPLAY "Deseja mesmo alterar? (S ou N)" AT 1235
                 ACCEPT WRK-ESCOLHA AT 1266
                 IF WRK-ESCOLHA = 'S' OR WRK-ESCOLHA = 's'
                    REWRITE FILMES-REG
                    IF FILME-STATUS = 0
                        DISPLAY 'Registrado alterado' AT 1235 ERASE EOL
                    ELSE
                        MOVE 'Registro nao alterado' TO WRK-ERRO
                        DISPLAY TELA-ERRO  ERASE EOL
                    END-IF

                 ELSE
                     DISPLAY 'Registrado nao alterado' AT 1235 ERASE EOL
                 END-IF

            END-IF
           END-IF
           ELSE
               MOVE 'Nao encontrado' TO WRK-ERRO
               DISPLAY TELA-ERRO  ERASE EOL
           END-IF
            DISPLAY "Deseja consultar outro registro 1(sim) ou 2(nao): "
            AT LINE 14 COLUMN 35
            ACCEPT WRK-TECLA AT 1486
           END-PERFORM.

       8000-EXCLUIR  SECTION.
           MOVE "Excluir" TO WRK-MODULO.

           PERFORM UNTIL WRK-TECLA NOT EQUAL 1
           PERFORM 3500-ZERA-VALORES
           DISPLAY TELA
           DISPLAY TELA-REGISTRO
           ACCEPT PK
           READ FILMES
               INVALID KEY
                   MOVE 'Nao encontrado' TO WRK-ERRO
                   DISPLAY TELA-ERRO  ERASE EOL

               NOT INVALID KEY
                   DISPLAY SS-DADOS
                   DISPLAY 'Encontrado (S/N)?: ' AT 1235
                   ACCEPT WRK-ESCOLHA AT 1255
           END-READ
           IF (WRK-ESCOLHA = 'S' OR WRK-ESCOLHA = 's')
              AND FILME-STATUS = 0

              DELETE FILMES

              INVALID KEY
              MOVE 'Nao excluido' TO WRK-ERRO
              ACCEPT WRK-TECLA AT 1301

              NOT INVALID KEY
              DISPLAY 'Registrado deletado' AT 1235 ERASE EOL

              END-DELETE
           ELSE
               DISPLAY 'Registrado nao deletado' AT 1235 ERASE EOL
           END-IF
              DISPLAY "Deseja excluir outro registro 1(sim) ou 2(nao): "
              AT LINE 14 COLUMN 35
              ACCEPT WRK-TECLA AT 1482
           END-PERFORM.

       9000-LISTAR  SECTION.
           MOVE "Relatorio" TO WRK-MODULO.

           OPEN INPUT FILMESSEQ.

           READ FILMESSEQ
           PERFORM UNTIL FILMESEQ-STATUS NOT EQUAL 0
               ADD 1 TO WRK-CONT-REG
               READ FILMESSEQ
           END-PERFORM

           CLOSE FILMESSEQ.
           OPEN INPUT FILMESSEQ.


           DISPLAY TELA

           DISPLAY "Registros lidos: " AT LINE WRK-CONTADOR-LINHA
           COLUMN 20
           WRK-CONT-REG AT LINE WRK-CONTADOR-LINHA COLUMN 38
           ADD 2 TO WRK-CONTADOR-LINHA.

           READ FILMESSEQ
           IF FILMESEQ-STATUS < 1
               DISPLAY "Codigo"
               AT LINE WRK-CONTADOR-LINHA COLUMN 20

               DISPLAY "Titulo"
               AT LINE WRK-CONTADOR-LINHA COLUMN 28

               DISPLAY "Genero"
               AT LINE WRK-CONTADOR-LINHA COLUMN 59

               DISPLAY "Duracao"
               AT LINE WRK-CONTADOR-LINHA COLUMN 68

               DISPLAY "Distribuidora"
               AT LINE WRK-CONTADOR-LINHA COLUMN 76

               DISPLAY "Nota"
               AT LINE WRK-CONTADOR-LINHA COLUMN 92

               ADD 1 TO WRK-CONTADOR-LINHA
               MOVE 'S' TO  WRK-ESCOLHA

           PERFORM UNTIL (WRK-ESCOLHA NOT EQUAL 's' AND
                         WRK-ESCOLHA NOT EQUAL 'S') AND
                         (WRK-ESCOLHA NOT EQUAL 'u' AND
                         WRK-ESCOLHA NOT EQUAL 'U')

               MOVE 9 TO WRK-CONTADOR-LINHA

               PERFORM 7 TIMES

               IF FILMESEQ-STATUS < 1
                   DISPLAY CODFILMESQ
                   AT LINE WRK-CONTADOR-LINHA COLUMN 20 ERASE EOL

                   DISPLAY TITULOSQ
                   AT LINE WRK-CONTADOR-LINHA COLUMN 28 ERASE EOL

                   DISPLAY GENEROSQ
                   AT LINE WRK-CONTADOR-LINHA COLUMN 59 ERASE EOL

                   DISPLAY DURACAOSQ
                   AT LINE WRK-CONTADOR-LINHA COLUMN 68 ERASE EOL

                   DISPLAY DISTRIBUIDORASQ
                   AT LINE WRK-CONTADOR-LINHA COLUMN 76 ERASE EOL

                   DISPLAY NOTASQ
                   AT LINE WRK-CONTADOR-LINHA COLUMN 92 ERASE EOL
                   ADD 2 TO WRK-CONTADOR-LINHA

               READ FILMESSEQ

               ELSE IF WRK-FLAG EQUAL 0
               AND (WRK-ESCOLHA NOT EQUAL 'u' AND
               WRK-ESCOLHA NOT EQUAL 'U')

                 DISPLAY "Fim dos registros" AT LINE WRK-CONTADOR-LINHA
                 COLUMN 20 ERASE EOL
                 ADD 2 TO WRK-CONTADOR-LINHA
                 MOVE 1 TO WRK-FLAG

               END-IF
               END-IF

               END-PERFORM

               IF WRK-ESCOLHA EQUAL 'u' OR WRK-ESCOLHA EQUAL 'U'
                   CLOSE FILMESSEQ
                   OPEN INPUT FILMESSEQ

                   IF WRK-CONT-REG < 7
                       COMPUTE WRK-NUM-PAG = WRK-CONT-REG / 7
                       COMPUTE WRK-NUM-PAG = WRK-NUM-PAG * 7
                   END-IF

                   PERFORM WRK-NUM-PAG TIMES
                       READ FILMESSEQ
                   END-PERFORM

                   MOVE 9 TO WRK-CONTADOR-LINHA

                   PERFORM 7 TIMES
                   READ FILMESSEQ

                   IF FILMESEQ-STATUS < 1
                   DISPLAY CODFILMESQ
                   AT LINE WRK-CONTADOR-LINHA COLUMN 20 ERASE EOL

                   DISPLAY TITULOSQ
                   AT LINE WRK-CONTADOR-LINHA COLUMN 28 ERASE EOL

                   DISPLAY GENEROSQ
                   AT LINE WRK-CONTADOR-LINHA COLUMN 59 ERASE EOL

                   DISPLAY DURACAOSQ
                   AT LINE WRK-CONTADOR-LINHA COLUMN 68 ERASE EOL

                   DISPLAY DISTRIBUIDORASQ
                   AT LINE WRK-CONTADOR-LINHA COLUMN 76 ERASE EOL

                   DISPLAY NOTASQ
                   AT LINE WRK-CONTADOR-LINHA COLUMN 92 ERASE EOL
                   ADD 2 TO WRK-CONTADOR-LINHA


               ELSE IF WRK-FLAG EQUAL 0
                 DISPLAY "Fim dos registros" AT LINE WRK-CONTADOR-LINHA
                 COLUMN 20 ERASE EOL
                 ADD 2 TO WRK-CONTADOR-LINHA
                 MOVE 1 TO WRK-FLAG

               END-IF
               END-IF

               END-PERFORM

               END-IF

               DISPLAY "S - Proxima pagina  U - Ultima pagina  N - Sair"
               ERASE SCREEN
               AT LINE WRK-CONTADOR-LINHA COLUMN 20
               ACCEPT WRK-ESCOLHA AT LINE WRK-CONTADOR-LINHA COLUMN 68
               ADD 2 TO WRK-CONTADOR-LINHA
               MOVE 0 TO WRK-FLAG
           END-PERFORM
           ADD 1 TO WRK-CONTADOR-LINHA

           ELSE
               DISPLAY "Arquivo vazio" AT LINE 6 COLUMN 20
               ACCEPT WRK-ESCOLHA AT LINE 6 COLUMN 34
           END-IF

           CLOSE FILMESSEQ.
       END PROGRAM PROJETO-FILMES.
