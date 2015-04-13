# coding: utf-8
require 'rails_helper'
feature 'gerenciar Departamento' do
	scenario 'incluir Departamento' do # , :js => true do
		visit new_departamento_path
		preencher_e_verificar_departamento
	end
	scenario 'alterar Departamento' do #, :js => true do
		departamento = FactoryGirl.create(:departamento)
		visit edit_departamento_path(departamento)
		preencher_e_verificar_departamento
	end
	scenario 'excluir departamento' do #, :javascript => true do
		empresa = FactoryGirl.create(:empresa) 
    departamento = FactoryGirl.create(:departamento, empresa_id: empresa.id)
		visit departamentos_path
		click_button 'Excluir'
	end
	def preencher_e_verificar_departamento
		fill_in 'Nome', :with => "Informatica"
		fill_in 'Ramal', :with => "99"
		fill_in 'Responsavel', :with => "Luiz"
		click_button 'Salvar'
		expect(page).to have_content 'Nome: Informatica'
	  expect(page).to have_content 'Ramal: 99'
		expect(page).to have_content 'Responsavel: Luiz'
	end
end
