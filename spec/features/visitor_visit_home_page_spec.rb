require 'rails_helper'

feature 'Visitor visit home page' do
  scenario 'successfully' do
    visit root_path

    expect(page).to have_content('Plataforma de Vagas')
    expect(page).to have_content('Não perca tempo! Publique ou se cadastre em vagas.')
  end
end