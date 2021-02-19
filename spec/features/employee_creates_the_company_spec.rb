require 'rails_helper'

feature 'Employee creates the company' do

  scenario 'successfully' do
    visit root_path
    click_on 'Nova Empresa'

    fill_in 'Razão Social', with: 'Oracle do Brasil Sistemas Ltda'
    fill_in 'CNPJ', with: '59.456.277/0001-76'
    fill_in 'CEP', with: '04710-090'
    fill_in 'Endereço', with: 'Rua Dr. José Áureo Bustamante, 455'
    fill_in 'Complemento', with: 'Anexo Morumbi Bussiness CEN'
    fill_in 'Bairro', with: 'Vila Sao Francisco'
    fill_in 'Cidade', with: 'São Paulo'
    fill_in 'Estado', with: 'SP' 
    fill_in 'LinkedIn', with: 'https://www.linkedin.com/company/oracle'
    fill_in 'Instagram', with: 'https://www.instagram.com/oracle'
    fill_in 'Site', with: 'https://www.oracle.com/br/index.html'
    fill_in 'Sobre a empresa', with: 'Nossa missão é ajudar as pessoas a ver '\
                                    'dados de novas maneiras, descobrir ideias '\
                                    'e desbloquear infinitas possibilidades.'

    click_on 'Salvar'

    expect(page).to have_content('Oracle do Brasil Sistemas Ltda')
    expect(page).to have_content('59.456.277/0001-76')
    expect(page).to have_content('04710-090')
    expect(page).to have_content('Rua Dr. José Áureo Bustamante, 455')
    expect(page).to have_content('Anexo Morumbi Bussiness CEN')
    expect(page).to have_content('Vila Sao Francisco')
    expect(page).to have_content('São Paulo')
    expect(page).to have_content('SP')
    expect(page).to have_content('https://www.linkedin.com/company/oracle')
    expect(page).to have_content('https://www.instagram.com/oracle')
    expect(page).to have_content('Nossa missão é ajudar as pessoas a ver '\
                                'dados de novas maneiras, descobrir ideias '\
                                'e desbloquear infinitas possibilidades.')
  end

  scenario 'and required fields cannot be blank' do
    visit root_path
    click_on 'Nova Empresa'

    fill_in 'Razão Social', with: ''
      fill_in 'CNPJ', with: ''
      fill_in 'CEP', with: ''
      fill_in 'Endereço', with: ''
      fill_in 'Bairro', with: ''
      fill_in 'Cidade', with: ''
      fill_in 'Estado', with: '' 
      fill_in 'Sobre a empresa', with: ''
  
      click_on 'Salvar'

      expect(page).to have_content('Não foi possível criar a empresa')
      expect(page).to have_content('Razão Social não pode ficar em branco')
      expect(page).to have_content('CNPJ não pode ficar em branco')
      expect(page).to have_content('CEP não pode ficar em branco')
      expect(page).to have_content('Endereço não pode ficar em branco')
      expect(page).to have_content('Bairro não pode ficar em branco')
      expect(page).to have_content('Cidade não pode ficar em branco')
      expect(page).to have_content('Estado não pode ficar em branco')
      expect(page).to have_content('Sobre a empresa não pode ficar em branco')
  end
end