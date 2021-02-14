class CompaniesController < ApplicationController

  def index
    #@company = Company.all
  end

  def new
    @company = Company.new
  end

  def create
    company_params = params.require(:company).permit(:company_name, :cnpj, :zip_code, :address,
                                                      :complement, :district, :city,
                                                      :state, :linkedin, :instagram,
                                                      :site, :about_the_company)
    @company = Company.new(company_params)
    if @company.save
      redirect_to companies_path
    else
      render new
    end
  end
end
