require "application_system_test_case"

class NormalPaymentsTest < ApplicationSystemTestCase
  setup do
    @normal_payment = normal_payments(:one)
  end

  test "visiting the index" do
    visit normal_payments_url
    assert_selector "h1", text: "Normal Payments"
  end

  test "creating a Normal payment" do
    visit normal_payments_url
    click_on "New Normal Payment"

    click_on "Create Normal payment"

    assert_text "Normal payment was successfully created"
    click_on "Back"
  end

  test "updating a Normal payment" do
    visit normal_payments_url
    click_on "Edit", match: :first

    click_on "Update Normal payment"

    assert_text "Normal payment was successfully updated"
    click_on "Back"
  end

  test "destroying a Normal payment" do
    visit normal_payments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Normal payment was successfully destroyed"
  end
end
