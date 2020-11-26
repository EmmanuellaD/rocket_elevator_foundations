require './spec/rails_helper.rb'
require './app/controllers/customers_controller.rb'

RSpec.describe "Customers", type: :controller do
  newCustomer = Customer.create(  
      customer_creation_date:"date", 
      company_name:"companyName", 
      company_headquarter_address:"address", 
      full_name_company_contact:"companyContact", 
      company_contact_phone:"companyPhone", 
      email_company_contact:"ContactEmail", 
      company_description:"description", 
      full_name_service_technical_authority:"serviceTech", 
      technical_authority_phone: "techPhone", 
      technical_manager_email:"techEmail")

    

    it'will be a customer' do
      expect(newCustomer.email_company_contact).not_to be_nil
    end
  
end    
