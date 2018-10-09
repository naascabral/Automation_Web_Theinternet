# language:pt
Funcionalidade: Login Page


Cenário: Login com sucesso 
    Dado que o usuario deseja acessar o formulário de login na página "The Internet"
    Quando digita usuario e senha 
    | username    | password             | 
    | tomsmith    | SuperSecretPassword! | 
    Então efetua o Login
    E exibe a menssagem 
"""
      You logged into a secure area!
"""

Cenário: Login com senha errada
    Dado que o usuario deseja acessar o formulário de login na página "The Internet"
    Quando digita usuario e senha 
    | username    | password             | 
    | tomsmith    | test123              | 
    Então efetua o Login
    E exibe a menssagem 
"""
     Your password is invalid!
"""

Cenário: Logout
    Dado que o usuario está logado 
    Quando clica no botão Logout
    Então exibir a menssagem
"""
    You logged out of the secure area!
"""