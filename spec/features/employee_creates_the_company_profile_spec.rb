require 'rails_helper'

feature 'Employee creates the company profile' do
  scenario 'from index page' do
    visit root_path
    click_on 'Empresa'

    expect(page).to have_link('Preencher Perfil', href: new_company_path)
  end

  scenario 'successfully' do
    visit root_path
    click_on 'Empresa'
    click_on 'Preencher Perfil'

    fill_in 'Razão Social', with: 'Oracle do Brasil Sistemas Ltda'
    fill_in 'CNPJ', with: '59.456.277/0001-76'
    fill_in 'CEP', with: '04710-090'
    fill_in 'Endereço', with: 'Rua Dr. José Áureo Bustamante, 455'
    fill_in 'Complemento', with: 'Anexo Mo  rumbi Bussiness CEN'
    fill_in 'Bairro', with: 'Vila Sao Francisco'
    fill_in 'Cidade', with: 'São Paulo'
    fill_in 'Estado', with: 'SP' 
    fill_in 'LinkedIn', with: 'https://www.linkedin.com/company/oracle'
    fill_in 'Instagram', with: 'https://www.instagram.com/oracle'
    fill_in 'Site', with: 'https://www.oracle.com/br/index.html'
    fill_in 'Sobre a empresa', with: 'Nossa missão é ajudar as pessoas a ver 
                                    dados de novas maneiras, descobrir ideias
                                    e desbloquear infinitas possibilidades.'
    #attach_file 'Imagem', '/caminho/para/imagem.jpg'

    click_on 'Salvar'

    expect(current_path).to eq(companies_path)
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
    expect(page).to have_content('Nossa missão é ajudar as pessoas a ver 
                                dados de novas maneiras, descobrir ideias
                                e desbloquear infinitas possibilidades.')
    expect(page).to have_link(voltar)
  end
end