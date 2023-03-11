      ******************************************************************
      * Author:Fabricio Perrone
      * Date:07/03/2023
      * Purpose: study 
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. SHOWDOMILHAO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 QUESTION-TEXT PIC X(100) OCCURS 5 TIMES.
       01 OPTION-A PIC X(50) OCCURS 5 TIMES.
       01 OPTION-B PIC X(50) OCCURS 5 TIMES.
       01 OPTION-C PIC X(50) OCCURS 5 TIMES.
       01 OPTION-D PIC X(50) OCCURS 5 TIMES.
       01 ANSWER PIC X OCCURS 5 TIMES.
       01 USER-ANSWER PIC X.
       01 CORRECT-ANSWERS PIC 99 VALUE 0.
       01 CURRENT-QUESTION PIC 99 VALUE 0.

       PROCEDURE DIVISION.
       MAIN-LOGIC.
       PERFORM INITIALIZE-DATA.
       PERFORM DISPLAY-WELCOME-SCREEN.
       PERFORM UNTIL CURRENT-QUESTION = 5
       PERFORM DISPLAY-QUESTION
       PERFORM READ-USER-ANSWER
       PERFORM CHECK-ANSWER
       END-PERFORM.
       PERFORM DISPLAY-SCORE.
       STOP RUN.

       INITIALIZE-DATA.
       MOVE 'Qual o primeiro videogame criado?' TO QUESTION-TEXT(1)
       MOVE 'A) Mega Drive' TO OPTION-A(1)
       MOVE 'B) Super Nintendo' TO OPTION-B(1)
       MOVE 'C) Atari 2600' TO OPTION-C(1)
       MOVE 'D) Magnavox Odyssey' TO OPTION-D(1)
       MOVE 'D' TO ANSWER(1)

       MOVE 'Empresas criadoras dos arcades?' TO QUESTION-TEXT(2)
       MOVE 'A) Capcom/SNK' TO OPTION-A(2)
       MOVE 'B) Konami/Taito' TO OPTION-B(2)
       MOVE 'C) Taito/Sega' TO OPTION-C(2)
       MOVE 'D) Sega/Nintendo' TO OPTION-D(2)
       MOVE 'C' TO ANSWER(2)

       MOVE 'Primeiro Mascote da Nintendo?' TO QUESTION-TEXT(3)
       MOVE 'A) Mario' TO OPTION-A(3)
       MOVE 'B) Link/Zelda' TO OPTION-B(3)
       MOVE 'C) Kirby' TO OPTION-C(3)
       MOVE 'D) Donkey Kong' TO OPTION-D(3)
       MOVE 'D' TO ANSWER(3)

       MOVE 'Primeiro jogo famoso de luta?' TO QUESTION-TEXT(4)
       MOVE 'A) Street Fighter' TO OPTION-A(4)
       MOVE 'B) Mortal Kombat' TO OPTION-B(4)
       MOVE 'C) Tekken' TO OPTION-C(4)
       MOVE 'D) The King of fighters' TO OPTION-D(4)
       MOVE 'A' TO ANSWER(4)

       MOVE 'Qual o videogame mais vendido?' TO QUESTION-TEXT(5)
       MOVE 'A) Playstation 2' TO OPTION-A(5)
       MOVE 'B) Gamecube' TO OPTION-B(5)
       MOVE 'C) Xbox' TO OPTION-C(5)
       MOVE 'D) Dreamcast' TO OPTION-D(5)
       MOVE 'A' TO ANSWER(5).

       DISPLAY-WELCOME-SCREEN.
       DISPLAY 'Bem vindo ao show do milhao!'.
       DISPLAY 'Voce tera que responder as perguntas para avancar!'.
       DISPLAY 'Selecione a opcao correta'.
       DISPLAY-QUESTION.
       ADD 1 TO CURRENT-QUESTION
       DISPLAY 'Questao ' CURRENT-QUESTION ':'
       DISPLAY QUESTION-TEXT(CURRENT-QUESTION)
       DISPLAY OPTION-A(CURRENT-QUESTION)
       DISPLAY OPTION-B(CURRENT-QUESTION)
       DISPLAY OPTION-C(CURRENT-QUESTION)
       DISPLAY OPTION-D(CURRENT-QUESTION)
       DISPLAY 'Sua Resposta (A/B/C/D)? '.

       READ-USER-ANSWER.
       ACCEPT USER-ANSWER.

       CHECK-ANSWER.
       IF USER-ANSWER = ANSWER(CURRENT-QUESTION)
       ADD 1 TO CORRECT-ANSWERS
       DISPLAY 'Correto!'
       ELSE
       DISPLAY 'Errado!'
       END-IF.

       DISPLAY-SCORE.
       DISPLAY 'Voce acertou ' CORRECT-ANSWERS ' de 5 questoes'.
       END PROGRAM SHOWDOMILHAO.
