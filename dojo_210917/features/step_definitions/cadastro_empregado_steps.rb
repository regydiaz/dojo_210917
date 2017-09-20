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
	click_link('Add Employee')
	fill_in('firstName', :with=> 'Thiago')
	fill_in('lastName', :with=> 'Matsumoto')
	click_button('btnSave')

end

Então(/^empregado cadastrado com sucesso$/) do
	should have_content('Thiago Matsumoto')
end
