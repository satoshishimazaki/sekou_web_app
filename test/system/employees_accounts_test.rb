require "application_system_test_case"

class EmployeesAccountsTest < ApplicationSystemTestCase
  setup do
    @employees_account = employees_accounts(:one)
  end

  test "visiting the index" do
    visit employees_accounts_url
    assert_selector "h1", text: "Employees Accounts"
  end

  test "creating a Employees account" do
    visit employees_accounts_url
    click_on "New Employees Account"

    fill_in "Address Building", with: @employees_account.address_building
    fill_in "Address City", with: @employees_account.address_city
    fill_in "Address Post", with: @employees_account.address_post
    fill_in "Birth", with: @employees_account.birth
    fill_in "Desired Salary", with: @employees_account.desired_salary
    fill_in "Email", with: @employees_account.email
    fill_in "Employment Status", with: @employees_account.employment_status
    fill_in "Faculty", with: @employees_account.faculty
    fill_in "First Name", with: @employees_account.first_name
    fill_in "First Name Kana", with: @employees_account.first_name_kana
    fill_in "Graduate", with: @employees_account.graduate
    fill_in "Last Name", with: @employees_account.last_name
    fill_in "Last Name Kana", with: @employees_account.last_name_kana
    fill_in "Not Public Company", with: @employees_account.not_public_company
    fill_in "Password", with: @employees_account.password
    fill_in "Personal Summary", with: @employees_account.personal_summary
    fill_in "Phone Number", with: @employees_account.phone_number
    fill_in "Prefecture", with: @employees_account.prefecture_id
    fill_in "Sex", with: @employees_account.sex
    fill_in "University", with: @employees_account.university
    click_on "Create Employees account"

    assert_text "Employees account was successfully created"
    click_on "Back"
  end

  test "updating a Employees account" do
    visit employees_accounts_url
    click_on "Edit", match: :first

    fill_in "Address Building", with: @employees_account.address_building
    fill_in "Address City", with: @employees_account.address_city
    fill_in "Address Post", with: @employees_account.address_post
    fill_in "Birth", with: @employees_account.birth
    fill_in "Desired Salary", with: @employees_account.desired_salary
    fill_in "Email", with: @employees_account.email
    fill_in "Employment Status", with: @employees_account.employment_status
    fill_in "Faculty", with: @employees_account.faculty
    fill_in "First Name", with: @employees_account.first_name
    fill_in "First Name Kana", with: @employees_account.first_name_kana
    fill_in "Graduate", with: @employees_account.graduate
    fill_in "Last Name", with: @employees_account.last_name
    fill_in "Last Name Kana", with: @employees_account.last_name_kana
    fill_in "Not Public Company", with: @employees_account.not_public_company
    fill_in "Password", with: @employees_account.password
    fill_in "Personal Summary", with: @employees_account.personal_summary
    fill_in "Phone Number", with: @employees_account.phone_number
    fill_in "Prefecture", with: @employees_account.prefecture_id
    fill_in "Sex", with: @employees_account.sex
    fill_in "University", with: @employees_account.university
    click_on "Update Employees account"

    assert_text "Employees account was successfully updated"
    click_on "Back"
  end

  test "destroying a Employees account" do
    visit employees_accounts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employees account was successfully destroyed"
  end
end
