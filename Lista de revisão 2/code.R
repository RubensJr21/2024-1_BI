# 1. Crie um vetor chamado idades com as idades de 5 pessoas: 25, 30, 22, 35, 28. Em seguida, calcule a média das idades (mean).

idades <- c(25, 30, 22, 35, 28)
mean(idades)

# 2. Use um loop for para imprimir os números de 1 a 5.
for (num in seq(1:5)) {
  print(num)
}

# 3. Crie uma função chamada classificaIdade que recebe uma idade como parâmetro e retorna "Menor de idade" se a idade for menor que 18, e "Maior de idade" caso contrário.

classificaIdade <- function(idade) {
  if(idade < 18){
    return ("Menor de idade")
  }else{
    return ("Maior de idade")
  }
}

classificaIdade(17)
classificaIdade(23)

# 4. Crie uma função chamada somaQuadrados que recebe dois números como parâmetros e retorna a soma de seus quadrados (X ^ 2).

somaQuadrados <- function(num1, num2){
  return ((num1 ^ 2) + (num2 ^ 2))
}

somaQuadrados(2,5)
somaQuadrados(7,13)

# 5. Utilize a função sapply para calcular o dobro de cada elemento no vetor numeros (1, 2, 3, 4, 5).

number.dobro <- function(numero){
  return (2 * numero)
}

numeros <- c(1, 2, 3, 4, 5)
sapply(numeros, number.dobro)

# 6. Crie um script que gera um gráfico de dispersão (plot) para visualizar a relação entre duas variáveis fictícias, como idade e pontuação em um teste. Use cores diferentes para representar se a pessoa é menor ou maior de idade. Crie uma função chamada plotIdadePontuacao que aceita vetores de idades e pontuações como parâmetros. Seu script deve criar um gráfico de dispersão onde cada ponto representa uma pessoa com sua idade e pontuação, e a cor do ponto indica se a pessoa é menor ou maior de idade. A função legend adiciona uma legenda ao gráfico indicando as cores associadas a cada grupo.

# idade e pontuação de um teste
# cor diferente para diferenciar os maiores de idade dos menores de idade
# cirar função plotIdadePontuacao que aceita vetores de idades e pontuações como parâmetros.

install.packages("ggplot2")
library("ggplot2")

pessoas.idades <- c(15,14,16)
pessoas.pontuacao <- c(5,9,5)

?plot

plotIdadePontuacao <- function(idades,pontuacoes){
  if (length(idades) != length(pontuacoes)) {
    stop("Os vetores de idades e pontuações devem ter o mesmo comprimento.")
  }
  pessoas <- list(idades, pontuacoes)
  
  cores <- ifelse(idades < 18, "red", "blue")
  
  plot(idades, pontuacoes, col = cores, pch = 16, main = "Relação Idade vs. Pontuação",
       xlab = "Idade", ylab = "Pontuação")
  legend("topright", legend = c("Menor de idade", "Maior de idade"), col = c("red", "blue"), pch = 16)
}


plotIdadePontuacao(pessoas.idades, pessoas.pontuacao)

??ggplot
