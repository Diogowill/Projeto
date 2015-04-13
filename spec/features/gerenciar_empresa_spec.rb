# coding: utf-8
require 'rails_helper'
feature 'gerenciar Empresa' do

	scenario 'incluir Empresa' do # , :js => true do
		visit new_empresa_path
		preencher_e_verificar_empresa
	end

	scenario 'alterar Empresa' do #, :js => true do
		empresa = FactoryGirl.create(:empresa)
		visit edit_empresa_path(empresa)
		preencher_e_verificar_empresa
	end

	scenario 'excluir empresa' do #, :javascript => true do
		empresa = FactoryGirl.create(:empresa)
		visit empresas_path
		click_button 'Excluir'
	end

	def preencher_e_verificar_empresa
		fill_in 'Nome', :with => "Luiz"
		fill_in 'Endereco', :with => "Rua XXX"
		fill_in 'Telefone', :with => "99999"
		click_button 'Salvar'
		expect(page).to have_content 'Nome: Luiz'
		expect(page).to have_content 'Endereco: Rua XXX'
		expect(page).to have_content 'Telefone: 99999'

	end
end
