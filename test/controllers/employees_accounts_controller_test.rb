require 'test_helper'

class EmployeesAccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employees_account = employees_accounts(:one)
  end

  test "should get index" do
    get employees_accounts_url
    assert_response :success
  end

  test "should get new" do
    get new_employees_account_url
    assert_response :success
  end

  test "should create employees_account" do
    assert_difference('EmployeesAccount.count') do
      post employees_accounts_url, params: { employees_account: { address_building: @employees_account.address_building, address_city: @employees_account.address_city, address_post: @employees_account.address_post, birth: @employees_account.birth, desired_salary: @employees_account.desired_salary, email: @employees_account.email, employment_status: @employees_account.employment_status, faculty: @employees_account.faculty, first_name: @employees_account.first_name, first_name_kana: @employees_account.first_name_kana, graduate: @employees_account.graduate, last_name: @employees_account.last_name, last_name_kana: @employees_account.last_name_kana, not_public_company: @employees_account.not_public_company, password: @employees_account.password, personal_summary: @employees_account.personal_summary, phone_number: @employees_account.phone_number, prefecture_id: @employees_account.prefecture_id, sex: @employees_account.sex, university: @employees_account.university } }
    end

    assert_redirected_to employees_account_url(EmployeesAccount.last)
  end

  test "should show employees_account" do
    get employees_account_url(@employees_account)
    assert_response :success
  end

  test "should get edit" do
    get edit_employees_account_url(@employees_account)
    assert_response :success
  end

  test "should update employees_account" do
    patch employees_account_url(@employees_account), params: { employees_account: { address_building: @employees_account.address_building, address_city: @employees_account.address_city, address_post: @employees_account.address_post, birth: @employees_account.birth, desired_salary: @employees_account.desired_salary, email: @employees_account.email, employment_status: @employees_account.employment_status, faculty: @employees_account.faculty, first_name: @employees_account.first_name, first_name_kana: @employees_account.first_name_kana, graduate: @employees_account.graduate, last_name: @employees_account.last_name, last_name_kana: @employees_account.last_name_kana, not_public_company: @employees_account.not_public_company, password: @employees_account.password, personal_summary: @employees_account.personal_summary, phone_number: @employees_account.phone_number, prefecture_id: @employees_account.prefecture_id, sex: @employees_account.sex, university: @employees_account.university } }
    assert_redirected_to employees_account_url(@employees_account)
  end

  test "should destroy employees_account" do
    assert_difference('EmployeesAccount.count', -1) do
      delete employees_account_url(@employees_account)
    end

    assert_redirected_to employees_accounts_url
  end
end
