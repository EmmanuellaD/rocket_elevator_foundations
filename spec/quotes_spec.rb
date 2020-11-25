require './spec/rails_helper.rb'
require './app/controllers/quotes_controller.rb'

RSpec.describe "Quotes", type: :controller do
    newQuote= Quote.create(
                            contact_full_name:"fullName",
                            company_name:"companyName",
                            contact_email:"email",
                            phone:"phone",
                            building_type:"building",
                            no_of_floors:"floors", 
                            no_of_basements:"basements", 
                            no_of_elevators_cages:"cages", 
                            no_of_parking_spaces:"parking",
                            no_of_tenant_companies:"tenantCompanies",
                            no_of_distinct_businesses:"distinctBuilding",
                            no_of_elevators:"numberElevators",
                            product_grade:"productGrade",
                            elevator_cost:"elevatorCost",
                            installation_cost:"installationCost",
                            total_cost:"totalCost",
            )
    it 'will be a quote' do
    freshQuote= expect(newQuote).to be_a(Quote)
    pp freshQuote
  end
  it "will contain email" do
    newEmail= expect(newQuote.contact_email).to include("email")
    pp newEmail
  end
end