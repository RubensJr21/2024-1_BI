# EXERCÍCIO 1:
# Considere os seguintes data frames:

df1 <- data.frame(ID = c(1, 2, 3),
                  Nome = c("Alice", "Bob", "Charlie"))

df2 <- data.frame(ID = c(2, 3, 4),
                  Pontuacao = c(80, 90, 75))

# Realize um left_join entre df1 e df2 utilizando a coluna "ID".

install.packages("dplyr")
library(dplyr)

df3 <- left_join(df1,df2,"ID")
head(df3)

# EXERCÍCIO 2:

# Repita o Exercício anterior, mas agora usando o right_join e o inner_join


# right_join
df4 <- right_join(df1,df2,"ID")
head(df4)

#inner_join

df5 <- inner_join(df1,df2,"ID")
head(df5)

# EXERCÍCIO 3:
# Considere o seguinte data frame:

dados <- data.frame(
  Nome = c("Alice", "Bob", "Charlie", "David", "Eva"),
  Idade = c(25, 30, 22, 35, 28),
  Salario = c(50000, 60000, 45000, 70000, 55000),
  Departamento = c("Vendas", "TI", "RH", "Vendas", "TI")
)

# Filtre as linhas para incluir apenas pessoas com idade inferior a 30 anos,
# depois ordene o resultado pelo salário em ordem decrescente.

dados.filtrados <- dados %>%
  filter(Idade < 30) %>%
  arrange(desc(Salario)) # orderby, quando for decrescente precisa passar a função desc(n), quando for crescente não precisa por nada

print(dados.filtrados)


# EXERCÍCIO 4:
# Usando o mesmo data frame dados, selecione apenas as colunas "Nome" e "Salario",
# e crie uma nova coluna chamada "Salario_Ajustado" que seja o dobro do salário original.

# Minha solução
dados_2 <- dados[c("Nome", "Salario")]
dados_2$Salario_Ajustado <- dados_2$Salario * 2

#Solução do professor
resultado_ex2 <- dados %>%
  select(Nome, Salario) %>%
  mutate(Salario_Ajustado = Salario * 2)

print(dados_2)
print(resultado_ex2)

# EXERCÍCIO 5:
# Usando o mesmo data frame dados, agrupe os dados pelo departamento e calcule a média e a
# soma dos salários em cada departamento.

# Solução do professor
resultado_ex3 <- dados %>%
  group_by(Departamento) %>%
  summarize(Media_Salario = mean(Salario), # Semelhante ao having, agrupamento condicional
            Soma_Salario = sum(Salario))

?summarise

print(resultado_ex3)