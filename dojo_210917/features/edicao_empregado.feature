#language:pt

@edit
Funcionalidade: Edicao de empregado
Realizar edicao de empregado existente no site Orange HRM
	
	Cenario: Editar um empregado existente
		Dado que eu esteja no site Orange HRM
		Quando realizar login acessando a aba PIM
		E editar os campos permitidos na aba Employee List
		Então registro de empregado modificado com sucesso
