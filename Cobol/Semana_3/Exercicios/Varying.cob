      ******************************************************************
      * Author:
      * Date:
      * Purpose: Learn about good practices and the comand varying
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


       77 WRK-NUM PIC 9(02) VALUE ZEROS.
       77 WRK-RESULT PIC 9(03) VALUE ZEROS.
       77 WRK-CONTADOR PIC 9(02) VALUE ZEROS.




       PROCEDURE DIVISION.
       0001-PRINCIPAL             SECTION.
           PERFORM 0100-INICIALIZAR.
           PERFORM 0200-PROCESSAR.
           PERFORM 0300-FINALIZAR.
       0100-INICIALIZAR           SECTION.
       DISPLAY "Digite o numero".
           ACCEPT WRK-NUM.

       0200-PROCESSAR             SECTION.
       PERFORM VARYING WRK-CONTADOR FROM 0 BY 1
                       UNTIL WRK-CONTADOR GREATER 10
           COMPUTE WRK-RESULT = WRK-NUM * WRK-CONTADOR
           DISPLAY WRK-NUM " x " WRK-CONTADOR " = " WRK-RESULT
       END-PERFORM.

       0300-FINALIZAR             SECTION.
            CONTINUE.
            STOP RUN.
       END PROGRAM EXVARYING.
