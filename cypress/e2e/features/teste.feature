Feature: Busca no google 
  Scenario: Busca no google
    Given visito a url do google
    When eu buscar a palavra chave teste
    Then deve exibir o resultado da busca