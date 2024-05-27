import { Given, When, Then } from '@badeball/cypress-cucumber-preprocessor';

Given(`que eu esteja na tela de cadastro de produtos`, () => {
    cy.visit('login')
    cy.login('edsonsantos@email.com','teste')
    cy.wait(3000)
});

When(`eu inserir {string}, {float}, {string}, {int}`, (nome, preco, descricao, quantidade) => {
    let nomeProduto = `${nome}-${Date.now()}`
    cy.cadastroProduto(nomeProduto, preco, descricao ,quantidade)
});

Then(`deve validar o {string} do produto na lista`, (nome) => {
    cy.get('.jumbotron').should('contain', nome)
});