algoritmo "semnome"
var
   m: vetor [1..3, 1..3] de inteiro
   l, c, valor, N, R, A: inteiro
   jX, jO: vetor [1..9] de inteiro
Procedimento Velha ()
inicio
   LimpaTela
   Para l <- 1 ate 3 faca
      EscrevaL ("+---+---+---+")
      Para c <- 1 ate 3 faca
         Se (m[l,c]>=1) entao
            Escreva ("|")
            Escreva (m[l,c]:3)
         FimSe
         Se (m[l,c]=0) entao
            Escreva ("|":3)
            Escreva ("X")
         FimSe
         Se (m[l,c]=-1) entao
            Escreva ("|":3)
            Escreva ("O")
         FimSe
      FimPara
      Escreva ("|")
      EscrevaL ()
   FimPara
   EscrevaL ("+---+---+---+")
FimProcedimento
Funcao Finish (X: inteiro): inteiro
var
   S, l, c, Fim: inteiro
inicio
   Fim <- Fim - Fim
   Se (m[1,1]=m[1,2]) e (m[1,2]=m[1,3]) entao
      Escreva ("Fim de Jogo")
      S <- 1
   FimSe
   Se (m[2,1]=m[2,2]) e (m[2,2]=m[2,3]) entao
      Escreva ("Fim de Jogo")
      S <- 1
   FimSe
   Se (m[3,1]=m[3,2]) e (m[3,2]=m[3,3]) entao
      Escreva ("Fim de Jogo")
      S <- 1
   FimSe
   Se (m[1,1]=m[2,2]) e (m[2,2]=m[3,3]) entao
      Escreva ("Fim de Jogo")
      S <- 1
   FimSe
   Se (m[1,3]=m[2,2]) e (m[2,2]=m[3,1]) entao
      Escreva ("Fim de Jogo")
      S <- 1
   FimSe
   Se (m[1,1]=m[2,1]) e (m[2,1]=m[3,1]) entao
      Escreva ("Fim de Jogo")
      S <- 1
   FimSe
   Se (m[1,2]=m[2,2]) e (m[2,2]=m[3,2]) entao
      Escreva ("Fim de Jogo")
      S <- 1
   FimSe
   Se (m[1,3]=m[2,3]) e (m[2,3]=m[3,3]) entao
      Escreva ("Fim de Jogo")
      S <- 1
   FimSe
   Para l <- 1 ate 3 faca
      Para c <- 1 ate 3 faca
         Se (m[l,c] < 1) entao
            Fim <- Fim + 1
         FimSe
      FimPara
   FimPara
   
   Se (Fim=9) entao
      Escreva ("Fim de Jogo")
      S <- 1
   FimSe
   Retorne S
FimFuncao
inicio
   Para l <- 1 ate 3 faca
      Para c <- 1 ate 3 faca
         valor <- valor + 1
         m[l,c] <- valor
      FimPara
   FimPara
   Enquanto (R<1) faca
      Velha ()
      Escreva ("Onde deseja jogar [X]:")
      Leia (N)
      Se (N<1) ou (N>9) entao
         LimpaTela
         Enquanto (N<1) ou (N>9) faca
            Velha ()
            Escreva ("#VALOR INVALIDO# Escolha de 1 a 9:")
            Leia (N)
         FimEnquanto
      FimSe

      Se (N=jX[N]) entao
         LimpaTela
         Enquanto (N=jX[N]) faca
            Velha ()
            Escreval ("#ERRO# Voce ja selecionou")
            EscrevaL ("Jogue [X] em outra posição nao selecionada:")
            Leia (N)
            Se (N<1) ou (N>9) entao
               LimpaTela
               Enquanto (N<1) ou (N>9) faca
                  Velha ()
                  Escreva ("#VALOR INVALIDO# Escolha de 1 a 9:")
                  Leia (N)
               FimEnquanto
            FimSe
         FimEnquanto
      FimSe

      Se (N=jO[N]) entao
         Enquanto (N=jO[N]) faca
            Velha ()
            EscrevaL ("#ERRO# Ja ocupado por [O]")
            EscrevaL ("Jogue [X] em outra posição")
            Leia (N)
            Se (N<1) ou (N>9) entao
               Enquanto (N<1) ou (N>9) faca
                  Velha ()
                  Escreva ("#VALOR INVALIDO# Escolha de 1 a 9:")
                  Leia (N)
               FimEnquanto
            FimSe
            Se (N=jX[N]) entao
               Enquanto (N=jX[N]) faca
                  Velha ()
                  EscrevaL ("#ERRO# Voce ja selecionou")
                  EscrevaL ("Jogue [X] em outra posição nao selecionada:")
                  Leia (N)
                  Enquanto (N<1) ou (N>9) faca
                     Velha ()
                     Escreva ("#VALOR INVALIDO# Escolha de 1 a 9:")
                     Leia (N)
                  FimEnquanto
               FimEnquanto
            FimSe
         FimEnquanto
      FimSe

      jX[N] <- N

      Para l <- 1 ate 3 faca
         Para c <- 1 ate 3 faca
            Se (N = m[l,c]) entao
               m[l,c] <- 0
            FimSe
         FimPara
      FimPara

      R <- Finish (A)

      Se (R<1) entao

         Velha()
         Escreva ("Onde deseja jogar [O]:")
         Leia (N)
         Se (N<1) ou (N>9) entao
            LimpaTela
            Enquanto (N<1) ou (N>9) faca
               Velha ()
               Escreva ("#VALOR INVALIDO#, Escolha de 1 a 9:")
               Leia (N)
            FimEnquanto
         FimSe

         Se (N=jO[N]) entao
            LimpaTela
            Enquanto (N=jO[N]) faca
               Velha ()
               Escreva ("#ERRO# Voce ja selecionou esse lugar antes")
               Escreva ("Jogue [O] em outra posição nao selecionada:")
               Leia (N)
               Se (N<1) ou (N>9) entao
                  LimpaTela
                  Enquanto (N<1) ou (N>9) faca
                     Velha ()
                     Escreva ("#VALOR INVALIDO# Escolha de 1 a 9:")
                     Leia (N)
                  FimEnquanto
               FimSe
            FimEnquanto
         FimSe

         Se (N=jX[N]) entao
            Enquanto (N=jX[N]) faca
               Velha ()
               EscrevaL ("#ERRO# Ja ocupado por [X]")
               EscrevaL ("Jogue [O] em outra posição")
               Leia (N)
               Se (N<1) ou (N>9) entao
                  Enquanto (N<1) ou (N>9) faca
                     Velha ()
                     Escreva ("#VALOR INVALIDO# Escolha de 1 a 9:")
                     Leia (N)
                  FimEnquanto
               FimSe
               Se (N=jO[N]) entao
                  Enquanto (N=jO[N]) faca
                     Velha ()
                     EscrevaL ("#ERRO# Voce ja selecionou")
                     EscrevaL ("Jogue [O] em outra posição nao selecionada:")
                     Leia (N)
                     Enquanto (N<1) ou (N>9) faca
                        Velha ()
                        Escreva ("#VALOR INVALIDO# Escolha de 1 a 9:")
                        Leia (N)
                     FimEnquanto
                  FimEnquanto
               FimSe
            FimEnquanto
         FimSe

         jO[N] <- N

         Para l <- 1 ate 3 faca
            Para c <- 1 ate 3 faca
               Se (N = m[l,c]) entao
                  m[l,c] <- -1
               FimSe
            FimPara
         FimPara
         Velha ()

         R <- Finish(A)
      FimSe
   FimEnquanto

fimalgoritmo