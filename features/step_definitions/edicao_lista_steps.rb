Dado(/^que eu esteja na tela de edição$/) do
  visit "http://opensource.demo.orangehrmlive.com/"
  fill_in('txtUsername', :with => 'admin')
  fill_in('txtPassword', :with => 'admin')
  click_button('btnLogin')
  click_link('menu_pim_viewPimModule')
  click_link('menu_pim_viewEmployeeList')
  click_button('searchBtn')
  click_link('0001') #Aqui eu acesso um funcionário contido na lista
end

Dado(/^efetue a edição com dados validos$/) do
  click_button('btnSave')
  choose('personal_optGender_2') #Aqui eu faço uma alteração em seu cadastro
end

Então(/^a edição efetuado com sucesso$/) do
  click_button('btnSave') #Aqui eu salvo a alteração
  assert_text('Successfully Saved')#Aqui eu verifico a mensagem de sucesso de edição
end