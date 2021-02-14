class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :company_name
      t.string :cnpj
      t.string :zip_code
      t.string :address
      t.string :complement
      t.string :district
      t.string :city
      t.string :state
      t.string :linkedin
      t.string :instagram
      t.string :site
      t.string :about_the_company

      t.timestamps
    end
  end
end
