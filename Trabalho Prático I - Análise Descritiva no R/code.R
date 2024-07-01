# Você deverá levantar 3 questões relevantes


#Seu relatório deverá contemplar os tópicos:
#  definição do problema,
#  obtenção dos dados,
#  transformação dos dados obtidos,
#  exploração dos dados,
#  visualização dos resultados

## Definição do problema:

# Para resolver um problema, primeiramente temos que entendê-lo. 
# Assim, precisamos analisar os direcionamentos das emendas
# parlaentares, entendendo para onde estão indo os valores
# obtidos pelos autores das emendas, e principalmente entender
# para onde vai o dinheiro recolhido pelo Estado.

# Vamos levantar algumas questões relevantes acerca dessa problemática:

# Quem foram os 10 parlamentares que mais receberam emendas parlamentares e quais foram seus valores no ano de 2020?
# Quais foram as 3 cidades que receberam o maior valor de emendas desses 10 parlamentares?
# Quais 10 cidades mais receberam emendas parlementares e quais foram seus valores no ano de 2020?


## Obtenção dos dados: (qual a base de dados e período[ano])

# Primeiramente, vamos acessar o Portal da Transparência do Governo 
# Federal por meio do endereço www.portaldatransparencia.gov.br

# Ao final da página inicial, há o link "Dados do Portal". Vamos 
# clicar nele.

# Em seguida, é exibida uma lista de bases separadas por temas.
# Vamos clicar na base "Viagens a Serviço", e depois no arquivo
# "Viagens a serviço".

# Na tela que se abre, há a opção de escolher qual exercício, ou seja,
# o ano que você deseja extrair os dados de viagens realizadas a 
# serviço.

# No campo "Exercícios Disponíveis", vamos selecionar o ano 2023 e 
# clicar em "Baixar".

# Ainda nesta tela, você também tem acesso ao dicionário de dados,
# que possui a descrição de cada campo das tabelas. Vamos então
# clicar no link "dicionário de dados".

# Em seguida, aparece na tela "Dicionários de Dados - Viagens a 
# Serviço - Pagamentos" com a descrição de cada um dos campos das 
# tabelas. Essas informações são muito úteis para o nosso estudo.

# Após fazer o download dos dados, é necessário carregá-los:


## Transformação dos dados obtidos (dar sentido aos dados, pois às vezes vem um -1 sem sentido, datas em formatos diferentes)

# É importante ter em mente que, na linguagem R, diversas 
# transformações nos dados coletados podem ser realizadas, a 
# depender do tipo de dado e do objetivo da análise.

# Agora, vamos estudar a transformação dos dados obtidos,
# a terceira etapa da nossa análise dos dados abertos de
# viagens a serviço.

# Pode-se perceber que os campos "Período - Data de Início"
# e "Período - Data de fim" são strings, por isso será
# necessário transformar para o tipo data.


## Exploração dos dados (Consultas em si)


# Visualização dos resultados

