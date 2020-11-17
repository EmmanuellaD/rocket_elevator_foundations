require 'test_helper'

class Intervention3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @intervention3 = intervention3s(:one)
  end

  test "should get index" do
    get intervention3s_url
    assert_response :success
  end

  test "should get new" do
    get new_intervention3_url
    assert_response :success
  end

  test "should create intervention3" do
    assert_difference('Intervention3.count') do
      post intervention3s_url, params: { intervention3: { battery_id: @intervention3.battery_id, column_id: @intervention3.column_id, customer_id: @intervention3.customer_id, employee_id: @intervention3.employee_id } }
    end

    assert_redirected_to intervention3_url(Intervention3.last)
  end

  test "should show intervention3" do
    get intervention3_url(@intervention3)
    assert_response :success
  end

  test "should get edit" do
    get edit_intervention3_url(@intervention3)
    assert_response :success
  end

  test "should update intervention3" do
    patch intervention3_url(@intervention3), params: { intervention3: { battery_id: @intervention3.battery_id, column_id: @intervention3.column_id, customer_id: @intervention3.customer_id, employee_id: @intervention3.employee_id } }
    assert_redirected_to intervention3_url(@intervention3)
  end

  test "should destroy intervention3" do
    assert_difference('Intervention3.count', -1) do
      delete intervention3_url(@intervention3)
    end

    assert_redirected_to intervention3s_url
  end
end
