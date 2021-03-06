# coding: utf-8
require 'rails_helper'
feature 'gerenciar Funcionario' do
	scenario 'incluir Funcionario' do # , :js => true do
		visit new_funcionario_path
		preencher_e_verificar_funcionario
	end
	scenario 'alterar Funcionario' do #, :js => true do
		funcionario = FactoryGirl.create(:funcionario)
		visit edit_funcionario_path(funcionario)
		preencher_e_verificar_funcionario
	end
	scenario 'excluir funcionario' do #, :javascript => true do
		departamento = FactoryGirl.create(:departamento)
		funcionario = FactoryGirl.create(:funcionario, departamento_id: departamento.id )
		visit funcionarios_path
		click_button 'Excluir'
	end
	def preencher_e_verificar_funcionario
		fill_in 'Nome', :with => "Luiz"
		fill_in 'Cargo', :with => "Diretor"
		fill_in 'Sexo', :with => "F"
		fill_in 'Endereco', :with => "Rua xxx"
		click_button 'Salvar'
		expect(page).to have_content 'Nome: Luiz'
		expect(page).to have_content 'Cargo: Diretor'
		expect(page).to have_content 'Sexo: F'
		expect(page).to have_content 'Endereco: Rua xxx'
	end
end
