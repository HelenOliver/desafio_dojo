#language: pt
#encode: uff-8

@cadastro
Funcionalidade: Cadastro de funcionário
	Eu como adminstrador
	Desejo cadastrar funcionários

Cenario: Cadastrar funcionário
	Dado que eu esteja na tela de cadastro
	E efetue o cadastro com dados validos
	Então o cadastro efetuado com sucesso

Cenario: Verificar cadastro de funcionário
	Dado que eu esteja na tela lista de funcionario
	E efetue o preenchimento do nome do funcionario cadastrado
	E pesquise o funcionário
	E acesse o cadastro do funcionário a partir da listagem
	Então o cadastro foi efetuado com sucesso