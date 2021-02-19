class Company < ApplicationRecord
  validates :company_name, :cnpj, :zip_code, :address, :district, :city, :state, :about_the_company, presence: true
end
