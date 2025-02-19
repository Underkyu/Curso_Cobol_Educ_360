      ******************************************************************
      * Author:
      * Date:
      * Purpose: Prectice my knowledge
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXPROPOSTO2.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.


       77 WRK-VALORCOMB PIC 9(02)V99 VALUE ZEROS.
       77 WRK-KM PIC 9(03) VALUE ZEROS.
       77 WRK-CIDADE PIC 9(1) VALUE ZEROS.
       77 WRK-PRECO PIC 9(06)V99 VALUE ZEROS.
       77 WRK-NOME PIC X(50) VALUE SPACES.
       77 WRK-NOMECID PIC X(10) VALUE SPACES.


       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
       0100-ENTRADA           SECTION.
       DISPLAY "Qual seu nome?".
           ACCEPT WRK-NOME.

       DISPLAY "Qual sua cidade 1(Piracicaba), 2(Jundiai), 3(Campinas)".
           ACCEPT WRK-CIDADE.

       DISPLAY "Digite o valor do combustivel".
           ACCEPT WRK-VALORCOMB.


       0150-PROCESSAMENTO           SECTION.
           EVALUATE WRK-CIDADE
           WHEN 1
               MOVE 220 TO WRK-KM
               MOVE "Piracicaba" TO WRK-NOMECID
           WHEN 2
               MOVE 120 TO WRK-KM
               MOVE "Jundiai" TO WRK-NOMECID
           WHEN 3
               MOVE 180 TO WRK-KM
               MOVE "Campinas" TO WRK-NOMECID
           WHEN OTHER
               DISPLAY "Cidade invalida"

           END-EVALUATE.

           COMPUTE WRK-VALORCOMB = WRK-VALORCOMB / 10.

           COMPUTE WRK-PRECO = WRK-VALORCOMB * WRK-KM.
           COMPUTE WRK-PRECO = WRK-PRECO + (WRK-PRECO*0,3).

       0200-DISPLAY                  SECTION.
           DISPLAY "Nome: " WRK-NOME
           DISPLAY "Destino: " WRK-NOMECID
           DISPLAY "Valor da viagem: " WRK-PRECO
            STOP RUN.
       END PROGRAM EXPROPOSTO2.
