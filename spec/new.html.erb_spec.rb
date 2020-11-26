require "rails_helper"
require 'capybara/rails'

#test login page
RSpec.describe "Sign in page", type: :feature do
    it "logs in" do
        visit '/authors/sign_in'
        click_button 'Log In'
        expect(page).to have_content 'Remember me'
    end
end
