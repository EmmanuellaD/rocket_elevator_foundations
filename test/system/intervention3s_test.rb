require "application_system_test_case"

class Intervention3sTest < ApplicationSystemTestCase
  setup do
    @intervention3 = intervention3s(:one)
  end

  test "visiting the index" do
    visit intervention3s_url
    assert_selector "h1", text: "Intervention3s"
  end

  test "creating a Intervention3" do
    visit intervention3s_url
    click_on "New Intervention3"

    fill_in "Battery", with: @intervention3.battery_id
    fill_in "Column", with: @intervention3.column_id
    fill_in "Customer", with: @intervention3.customer_id
    fill_in "Employee", with: @intervention3.employee_id
    click_on "Create Intervention3"

    assert_text "Intervention3 was successfully created"
    click_on "Back"
  end

  test "updating a Intervention3" do
    visit intervention3s_url
    click_on "Edit", match: :first

    fill_in "Battery", with: @intervention3.battery_id
    fill_in "Column", with: @intervention3.column_id
    fill_in "Customer", with: @intervention3.customer_id
    fill_in "Employee", with: @intervention3.employee_id
    click_on "Update Intervention3"

    assert_text "Intervention3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Intervention3" do
    visit intervention3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Intervention3 was successfully destroyed"
  end
end
