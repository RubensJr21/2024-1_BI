# 1. Criação e Acesso a Vetores:
# 
# a) Crie um vetor chamado numeros com os valores 1, 2, 3, 4 e 5.
# b) Imprima o terceiro elemento do vetor.

numeros <- c(1, 2, 3, 4, 5)
print(numeros[3])

# 2. Manipulação de Listas:
#
# a) Crie uma lista chamada pessoa com os elementos "Nome", "Idade" e "Cidade" e atribua valores apropriados.
# b) Imprima a idade da pessoa.

pessoa <- list(Nome = "Rubens", Idade = 22, Cidade = "Serra")
print(pessoa)


# 3. Remoção de Elementos:
# 
# a) Remova o segundo elemento do vetor numeros.
# b) Remova a idade da lista pessoa;
# c) Imprima o vetor numeros;
# d) Imprima a lista pessoa.

numeros <- numeros[-2]
pessoa[["Idade"]] <- NULL

print(numeros)
print(pessoa)

# 4. Criação de Data Frame:
#   
# a) Crie um data frame chamado dados com as colunas "Nomes" e "Notas", utilizando vetores apropriados.
# b) Acesse as notas do data frame;
# c) Imprima dados;
# d) Imprima somente as notas dos alunos.

dados <- data.frame(
  list(
    Nomes = c("Rubens", "Pedro"),
    Notas = c(21,12)
  )
)

apenas_notas <- dados[,2]

print(dados)

print(apenas_notas)

# 5. Manipulação de Data Frame:
#   
# a) Adicione uma nova coluna chamada "Aprovado" ao data frame dados, com valores booleanos indicando se a nota é maior ou igual a 80;
# b) Remova a coluna "Notas" do data frame.
# c) Imprima dados.

dados["Aprovados"] <- dados["Notas"] >= 80
dados["Notas"] <- NULL
print(dados)