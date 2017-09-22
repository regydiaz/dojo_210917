Dado(/^que eu esteja no site Orange HRM$/) do
  visit "http://opensource.demo.orangehrmlive.com/"
end

Quando(/^realizar login acessando a aba PIM$/) do
	fill_in('txtUsername', :with=> 'Admin')
	fill_in('txtPassword', :with=> 'admin')
	click_button('btnLogin')

end

Quando(/^preencher os campos obrigatorios na aba Add Employee$/) do
	click_link('PIM')
	click_link('menu_pim_addEmployee')
	fill_in('firstName', :with=> 'Mary')
	fill_in('lastName', :with=> 'Peace')
	click_button('btnSave')

end

Então(/^empregado cadastrado com sucesso$/) do
	should have_content('Mary Peace')
end
