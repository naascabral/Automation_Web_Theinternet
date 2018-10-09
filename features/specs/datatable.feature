# language:pt
Funcionalidade: Data Base Page

@editar
Cenário: Editar um registro da table
    Dado que o usuario deseje editar um registro
    Quando clica no botão editar 
    Então abre a tela de edição do registro 

@delete
Cenário: Deletar um registro da table
    Dado que o usuario deseje deletar um registro
    Quando clica no botão de deletar
    Então exibe a mensagem 
"""
      You delete a record from the table!
"""