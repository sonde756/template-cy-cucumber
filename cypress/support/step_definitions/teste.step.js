import {Given,  When, Then } from "@badeball/cypress-cucumber-preprocessor";

Given('visito a url do google', () => {
	cy.visit('https://www.google.com')
});

When("eu buscar a palavra chave teste", () => {
	cy.get('.gLFyf').type('teste{enter}')
});

Then("deve exibir o resultado da busca", () => {
	cy.get('#result-stats').should('contain', 'Aproximadamente')
});


