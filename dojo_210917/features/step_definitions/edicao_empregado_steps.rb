Quando(/^editar os campos permitidos na aba Employee List$/) do
	click_link('PIM')
	click_link('menu_pim_viewEmployeeList')
	fill_in('empsearch[employee_name][empName]', :with=> 'Mary Peace')
	click_button('searchBtn')
	click_link('Mary')
	click_button('btnSave')
	fill_in('personal[txtEmpMiddleName]', :with=> 'Santos')
	fill_in('personal[txtEmpLastName]', :with=> 'Mattos')
	choose('personal_optGender_2')
	select('Single',:from=>'personal[cmbMarital]')
	select('Australian',:from=>'personal_cmbNation')
	should have_content('Successfully Updated')
	click_link('Contact Details')
	click_button('btnSave')
	fill_in('contact[street1]', :with=> 'Yonge Street')
	fill_in('contact[city]', :with=> 'Toronto')
	fill_in('contact[province]', :with=> 'ON')
	select('Canada',:from=>'contact[country]')
	fill_in('contact[emp_work_email]', :with=> 'newemployee@canada.com')
	click_button('btnSave')
	should have_content('Successfully Updated')
	click_link('Salary')
	click_link('Add')
	select('Executive',:from=>'contact[country]')
	fill_in('salary[salary_component]', :with=> '5000')
	select('Monthly',:from=>'salary[payperiod_code]')
	select('United States Dollar',:from=>'salary[currency_id]')
	select('130000',:from=>'salary[basic_salary]')
	click_button('btnSalarySave')
	should have_content('Successfully Updated')  

	click_link('Job')
	click_button('btnSave')
	select('Sales Exec',:from=>'job[job_title]')
	select('Part-Time Contract',:from=>'job[emp_status]')
	fill_in('job[joined_date]', :with=> '2017-02-19')
	select('IT',:from=>'job[sub_unit]')
	select('Canadian Development Center',:from=>'job[location]')
	click_button('btnSave')
	should have_content('Successfully Updated')  

end                                                                            
                                                                               
Então(/^registro de empregado modificado com sucesso$/) do
	should have_content('Successfully Updated')                     

end                                                                            
                                                                               
                                                                               