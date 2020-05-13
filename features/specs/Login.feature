# language: pt

Funcionalidade: Login Crowdsourced Auditeste
	Eu como usuário registrado
	Posso efetuar login 
	Para visualizar os dados da conta

@loginSucesso
	Esquema do Cenario: Login com Sucesso
		Dado que na tela de login
		Quando preencher o <email> e <senha>
		Então é exibido o nome "Ana Sousa"

	Exemplos:
		| email | senha |
		| 'veron.oliveira@auditeste.com.br' | 'auditeste' |

@dadosInvalidos
	Esquema do Cenario: Dados invalidos
		Dado que na tela de login
		Quando preencher o <email> e <senha>
		Então a <mensagem> de erro

	Exemplos:
		| email                             | senha        | mensagem                |
		| 'veron.oliveira@auditeste.com.br' | 'incorreta'  | 'Senha não Localizada'  |
		| 'veron.errado@auditeste.com.br'   | 'auditeste'  | 'E-mail não Localizado' |

@dadosObrigatorios
	Esquema do Cenario: Dados em branco
		Dado que na tela de login
		Quando preencher o <email> e <senha>
		Então a <mensagem> de error de dados em branco

	Exemplos:
		| email                             | senha       | mensagem          |
		| ''                                | 'auditeste' | 'Digite o E-mail' |
		| 'veron.oliveira@auditeste.com.br' | ''          | 'Digite a Senha'  |