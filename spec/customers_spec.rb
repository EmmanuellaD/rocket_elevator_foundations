require './spec/rails_helper.rb'
require './app/controllers/customers_controller.rb'

RSpec.describe "Customers", type: :controller do
  newCustomer = Customer.create(  
    #   user_id:"id",
      customer_creation_date:"date", 
      company_name:"companyName", 
      company_headquarter_address:"address", 
      full_name_company_contact:"companyContact", 
      company_contact_phone:"compnyPhone", 
      email_company_contact:"ContactEmail", )
    #   :company_description, :full_name_service_technical_authority, :technical_authority_phone, :technical_manager_email)
end    
