#language: pt
#encode: uff-8

@edicao
Funcionalidade: Edição de lista
	Eu como adminstrador
	Desejo editar lista de funcionários

Cenario: Editar funcionário
	Dado que eu esteja na tela de edição
	E efetue a edição com dados validos
	Então a edição efetuado com sucesso