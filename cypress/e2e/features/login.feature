#language: pt

Funcionalidade: Login

Contexto:
Dado que eu esteja na tela de login do serverest

Cenário: Deve fazer login com sucesso
Quando eu inserir email e senha corretamente
Então deve direcionar para o dashboard

Cenário: Deve fazer login com sucesso usando exemplo de dados
Quando eu inserir email: "edsonsantos@email.com" e senha: "teste"
Então deve direcionar para o dashboard

Cenário: Deve validar erro ao fazer login com usuário ou senha invalidos
Quando eu inserir email: "qqcoisa@teste.com" e senha : "teste111@123"
Então deve exibir uma mensagem de erro

Esquema do Cenário: Deve fazer login com sucesso com vários
Quando eu inserir email: <email> e senha: <senha>
Então deve direcionar para o dashboard

Exemplos:
| email                                            | senha       |
| "edsonsantos@email.com"                          | "teste"     |
| "6c792a97-72a6-4e14-b7c7-3e8143b7c6ca@uorak.com" | "Teste@123" |


