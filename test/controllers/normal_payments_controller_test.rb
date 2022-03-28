require 'test_helper'

class NormalPaymentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @normal_payment = normal_payments(:one)
  end

  test "should get index" do
    get normal_payments_url
    assert_response :success
  end

  test "should get new" do
    get new_normal_payment_url
    assert_response :success
  end

  test "should create normal_payment" do
    assert_difference('NormalPayment.count') do
      post normal_payments_url, params: { normal_payment: {  } }
    end

    assert_redirected_to normal_payment_url(NormalPayment.last)
  end

  test "should show normal_payment" do
    get normal_payment_url(@normal_payment)
    assert_response :success
  end

  test "should get edit" do
    get edit_normal_payment_url(@normal_payment)
    assert_response :success
  end

  test "should update normal_payment" do
    patch normal_payment_url(@normal_payment), params: { normal_payment: {  } }
    assert_redirected_to normal_payment_url(@normal_payment)
  end

  test "should destroy normal_payment" do
    assert_difference('NormalPayment.count', -1) do
      delete normal_payment_url(@normal_payment)
    end

    assert_redirected_to normal_payments_url
  end
end
