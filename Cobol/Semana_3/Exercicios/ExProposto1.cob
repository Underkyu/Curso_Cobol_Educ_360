      ******************************************************************
      * Author:
      * Date:
      * Purpose: Practice my knowledge
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXVARYING.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.


       77 WRK-SALDO PIC 9(10) VALUE ZEROS.
       77 WRK-PAG PIC 9(06) VALUE 1.
       77 WRK-PAGT PIC 9(10) VALUE ZEROS.
       77 WRK-SALDOF PIC Z(07)9,99  VALUE ZEROS.
       77 WRK-PAGTED PIC Z(07)9,99  VALUE ZEROS.
       77 WRK-SALDOED PIC Z(07)9,99  VALUE ZEROS.




       PROCEDURE DIVISION.
       0001-PRINCIPAL             SECTION.
           PERFORM 0100-INICIALIZAR.
           PERFORM 0200-PROCESSAR.
           PERFORM 0300-FINALIZAR.
       0100-INICIALIZAR           SECTION.
       DISPLAY "Digite o seu saldo".
           ACCEPT WRK-SALDO.

       PERFORM UNTIL WRK-PAG EQUALS 0
       DISPLAY "Digite o pagamento ou 0 caso nao haja mais pagamentos"
       ACCEPT WRK-PAG
       COMPUTE WRK-PAGT = WRK-PAGT + WRK-PAG
       END-PERFORM.

       0200-PROCESSAR             SECTION.
           COMPUTE WRK-SALDOF  = WRK-SALDO - WRK-PAGT.
           MOVE WRK-SALDO TO WRK-SALDOED.
           MOVE WRK-PAGT TO WRK-PAGTED.

           DISPLAY "Saldo inicial: " WRK-SALDOED.
           DISPLAY "Pagamentos: "  WRK-PAGTED.
           DISPLAY "Salario final: "  WRK-SALDOF.


       0300-FINALIZAR             SECTION.
            CONTINUE.
            STOP RUN.
       END PROGRAM EXVARYING.
