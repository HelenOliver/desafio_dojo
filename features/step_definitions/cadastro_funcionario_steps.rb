o = SecureRandom.random_number(100) #Obtenho um valor numérico randômico e contateno com o nome do funcionário que estou inserindo, para garantir que vou pesquisar o mesmo usuário que cadastrei

Dado(/^que eu esteja na tela de cadastro$/) do
  visit "http://opensource.demo.orangehrmlive.com/"  
  fill_in('txtUsername', :with => 'admin') 
  fill_in('txtPassword', :with => 'admin')
  click_button('btnLogin')
end

Dado(/^efetue o cadastro com dados validos$/) do
  click_link('menu_pim_viewPimModule')
  click_link('menu_pim_addEmployee')
  fill_in('firstName', :with => 'Mary')
  fill_in('lastName', :with => 'Olsen'  + o.to_s)

end

Então(/^o cadastro efetuado com sucesso$/) do
  click_button('btnSave')
  assert_text('Personal Details')
end

Dado(/^que eu esteja na tela lista de funcionario$/) do
    visit "http://opensource.demo.orangehrmlive.com/"  
    fill_in('txtUsername', :with => 'admin') 
    fill_in('txtPassword', :with => 'admin')
    click_button('btnLogin')
    click_link('menu_pim_viewPimModule')
end

Dado(/^efetue o preenchimento do nome do funcionario cadastrado$/) do
    find('#empsearch_employee_name_empName')
    #find('#empsearch_employee_name_empName').set 'Mary Olsen'
    fill_in('empsearch_employee_name_empName', :with => 'Mary Olsen')
end

Dado(/^pesquise o funcionário$/) do
    find(:xpath,'//li[contains(.,"Mary Olsen' + o.to_s + '")]').click
    click_button('searchBtn')
end

Dado(/^acesse o cadastro do funcionário a partir da listagem$/) do
    find(:xpath,'//a[contains(.,"Mary")]').click
end

Então(/^o cadastro foi efetuado com sucesso$/) do
    assert_text('Mary')
    assert_text('Olsen' + o.to_s)
end
