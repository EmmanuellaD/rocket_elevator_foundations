require './spec/rails_helper.rb'
require './app/controllers/leads_controller.rb'

RSpec.describe "Leads", type: :controller do
  newLead = Lead.create( 
      contact_full_name:"name",
      company_name:"companyName",
      email:"email@codeboxx.biz",
      phone:"phone",
      project_name:"The best kind",
      message:"I will get this")
 

  it 'will be a lead' do
    freshLead= expect(newLead).to be_a(Lead)
    pp freshLead
  end
  it "will contain companyName" do
    newEmail= expect(newLead.email).to include("email")
    pp newEmail
  end
end
