#language: pt

Funcionalidade: Cadastro de produtos
Eu como admin do sistema
Quero cadastrar produtos com sucesso
Pra ter um estoque

Cenário:Cadastro de produtos com sucesso
Dado que eu esteja na tela de cadastro de produtos
Quando eu inserir <nome>, <preco>, <descricao>, <quantidade>
Então deve validar o <nome> do produto na lista

Exemplos:
| nome        | preco | descricao     | quantidade |
| "Produto 1" | 10.00 | "Descricao 1" | 5          |
| "Produto 2" | 20.00 | "Descricao 2" | 10         |
| "Produto 3" | 30.00 | "Descricao 3" | 15         |
    