Dado(/^que o usuario deseja acessar o formulário de login na página "([^"]*)"$/) do |pg|
   home.load
   home.content.page
   home.should have_title pg
   login.loginpage.click
  end
  Quando(/^digita usuario e senha$/) do |table|
    @user = table.hashes[0]['username'] 
    @pass = table.hashes[0]['password'] 
    login.login(@user, @pass)
  end
  
  Então(/^efetua o Login$/) do
    login.btnlogin.click
  end

  Então(/^exibe a menssagem$/) do |message|
    page.should have_content message
  end

  Dado(/^que o usuario está logado$/) do
    home.load
    home.content.page
    login.loginpage.click
    @user ='tomsmith'
    @pass = 'SuperSecretPassword!'
    login.login(@user, @pass)
    login.btnlogin.click
  end
  
  Quando(/^clica no botão Logout$/) do
    login.btnlogout.click
  end
  
  Então(/^exibir a menssagem$/) do |message|
    page.should have_content message
  end
  