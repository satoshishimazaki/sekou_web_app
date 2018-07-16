require "application_system_test_case"

class EmploymentPatternsTest < ApplicationSystemTestCase
  setup do
    @employment_pattern = employment_patterns(:one)
  end

  test "visiting the index" do
    visit employment_patterns_url
    assert_selector "h1", text: "Employment Patterns"
  end

  test "creating a Employment pattern" do
    visit employment_patterns_url
    click_on "New Employment Pattern"

    fill_in "Name", with: @employment_pattern.name
    click_on "Create Employment pattern"

    assert_text "Employment pattern was successfully created"
    click_on "Back"
  end

  test "updating a Employment pattern" do
    visit employment_patterns_url
    click_on "Edit", match: :first

    fill_in "Name", with: @employment_pattern.name
    click_on "Update Employment pattern"

    assert_text "Employment pattern was successfully updated"
    click_on "Back"
  end

  test "destroying a Employment pattern" do
    visit employment_patterns_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employment pattern was successfully destroyed"
  end
end
