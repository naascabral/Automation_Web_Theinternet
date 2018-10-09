Dado(/^que o usuario deseje editar um registro$/) do
    home.load
    home.content.page
    table.tablepage.click
end
  
Quando(/^clica no botão editar$/) do
    table.edit.click
end
  
Então(/^abre a tela de edição do registro$/) do
    @name ='Teste'
    table.table(@name)
end

Dado(/^que o usuario deseje deletar um registro$/) do
    home.load
    home.content.page
    table.tablepage.click
end
  
Quando(/^clica no botão de deletar$/) do
    table.delete.click
end
  
Então(/^exibe a mensagem$/) do |message|
    page.should have_content message
  end