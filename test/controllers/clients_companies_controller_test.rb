require 'test_helper'

class ClientsCompaniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @clients_company = clients_companies(:one)
  end

  test "should get index" do
    get clients_companies_url
    assert_response :success
  end

  test "should get new" do
    get new_clients_company_url
    assert_response :success
  end

  test "should create clients_company" do
    assert_difference('ClientsCompany.count') do
      post clients_companies_url, params: { clients_company: { address_building: @clients_company.address_building, address_city: @clients_company.address_city, address_post: @clients_company.address_post, average_ages: @clients_company.average_ages, day_off: @clients_company.day_off, domain_text: @clients_company.domain_text, employees_memo: @clients_company.employees_memo, employees_number: @clients_company.employees_number, established: @clients_company.established, homepage: @clients_company.homepage, name: @clients_company.name, prefecture_id: @clients_company.prefecture_id, president: @clients_company.president, recruiter: @clients_company.recruiter, stock: @clients_company.stock, stock_memo: @clients_company.stock_memo, time_end: @clients_company.time_end, time_memo: @clients_company.time_memo, time_start: @clients_company.time_start, welfare: @clients_company.welfare } }
    end

    assert_redirected_to clients_company_url(ClientsCompany.last)
  end

  test "should show clients_company" do
    get clients_company_url(@clients_company)
    assert_response :success
  end

  test "should get edit" do
    get edit_clients_company_url(@clients_company)
    assert_response :success
  end

  test "should update clients_company" do
    patch clients_company_url(@clients_company), params: { clients_company: { address_building: @clients_company.address_building, address_city: @clients_company.address_city, address_post: @clients_company.address_post, average_ages: @clients_company.average_ages, day_off: @clients_company.day_off, domain_text: @clients_company.domain_text, employees_memo: @clients_company.employees_memo, employees_number: @clients_company.employees_number, established: @clients_company.established, homepage: @clients_company.homepage, name: @clients_company.name, prefecture_id: @clients_company.prefecture_id, president: @clients_company.president, recruiter: @clients_company.recruiter, stock: @clients_company.stock, stock_memo: @clients_company.stock_memo, time_end: @clients_company.time_end, time_memo: @clients_company.time_memo, time_start: @clients_company.time_start, welfare: @clients_company.welfare } }
    assert_redirected_to clients_company_url(@clients_company)
  end

  test "should destroy clients_company" do
    assert_difference('ClientsCompany.count', -1) do
      delete clients_company_url(@clients_company)
    end

    assert_redirected_to clients_companies_url
  end
end
