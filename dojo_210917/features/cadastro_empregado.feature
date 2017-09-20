#language:pt

@insert
Funcionalidade: Cadastro de empregado
Realizar cadastro de empregado no site Orange HRM
	
	Cenario: Cadastrar um novo empregado 
		Dado que eu esteja no site Orange HRM
		Quando realizar login acessando a aba PIM
		E preencher os campos obrigatorios na aba Add Employee
		Então empregado cadastrado com sucesso
