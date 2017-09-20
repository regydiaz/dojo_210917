Quando(/^editar os campos permitidos na aba Employee List$/) do
	click_link('PIM')
	click_link('Employee List')
	fill_in('empsearch[employee_name][empName]', :with=> 'Hitto Matsumoto')
	click_button('searchBtn')
	click_link('Thiago')
	click_button('btnSave')
	fill_in('personal[txtEmpMiddleName]', :with=> 'Santos')
	fill_in('personal[txtEmpLastName]', :with=> 'Mattos')
	select('Australian',:from=>'personal_cmbNation')
	click_link('Job')
	click_button('btnSave')
	select('Sales Exec',:from=>'job[job_title]')
	select('Part-Time Contract',:from=>'job[emp_status]')
	fill_in('job[joined_date]', :with=> '2017-02-19')
	click_button('btnSave')
	should have_content('Successfully Updated')  

end                                                                            
                                                                               
Então(/^registro de empregado modificado com sucesso$/) do
	should have_content('Successfully Updated')                     

end                                                                            
                                                                               
                                                                               