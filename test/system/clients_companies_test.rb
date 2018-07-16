require "application_system_test_case"

class ClientsCompaniesTest < ApplicationSystemTestCase
  setup do
    @clients_company = clients_companies(:one)
  end

  test "visiting the index" do
    visit clients_companies_url
    assert_selector "h1", text: "Clients Companies"
  end

  test "creating a Clients company" do
    visit clients_companies_url
    click_on "New Clients Company"

    fill_in "Address Building", with: @clients_company.address_building
    fill_in "Address City", with: @clients_company.address_city
    fill_in "Address Post", with: @clients_company.address_post
    fill_in "Average Ages", with: @clients_company.average_ages
    fill_in "Day Off", with: @clients_company.day_off
    fill_in "Domain Text", with: @clients_company.domain_text
    fill_in "Employees Memo", with: @clients_company.employees_memo
    fill_in "Employees Number", with: @clients_company.employees_number
    fill_in "Established", with: @clients_company.established
    fill_in "Homepage", with: @clients_company.homepage
    fill_in "Name", with: @clients_company.name
    fill_in "Prefecture", with: @clients_company.prefecture_id
    fill_in "President", with: @clients_company.president
    fill_in "Recruiter", with: @clients_company.recruiter
    fill_in "Stock", with: @clients_company.stock
    fill_in "Stock Memo", with: @clients_company.stock_memo
    fill_in "Time End", with: @clients_company.time_end
    fill_in "Time Memo", with: @clients_company.time_memo
    fill_in "Time Start", with: @clients_company.time_start
    fill_in "Welfare", with: @clients_company.welfare
    click_on "Create Clients company"

    assert_text "Clients company was successfully created"
    click_on "Back"
  end

  test "updating a Clients company" do
    visit clients_companies_url
    click_on "Edit", match: :first

    fill_in "Address Building", with: @clients_company.address_building
    fill_in "Address City", with: @clients_company.address_city
    fill_in "Address Post", with: @clients_company.address_post
    fill_in "Average Ages", with: @clients_company.average_ages
    fill_in "Day Off", with: @clients_company.day_off
    fill_in "Domain Text", with: @clients_company.domain_text
    fill_in "Employees Memo", with: @clients_company.employees_memo
    fill_in "Employees Number", with: @clients_company.employees_number
    fill_in "Established", with: @clients_company.established
    fill_in "Homepage", with: @clients_company.homepage
    fill_in "Name", with: @clients_company.name
    fill_in "Prefecture", with: @clients_company.prefecture_id
    fill_in "President", with: @clients_company.president
    fill_in "Recruiter", with: @clients_company.recruiter
    fill_in "Stock", with: @clients_company.stock
    fill_in "Stock Memo", with: @clients_company.stock_memo
    fill_in "Time End", with: @clients_company.time_end
    fill_in "Time Memo", with: @clients_company.time_memo
    fill_in "Time Start", with: @clients_company.time_start
    fill_in "Welfare", with: @clients_company.welfare
    click_on "Update Clients company"

    assert_text "Clients company was successfully updated"
    click_on "Back"
  end

  test "destroying a Clients company" do
    visit clients_companies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Clients company was successfully destroyed"
  end
end
