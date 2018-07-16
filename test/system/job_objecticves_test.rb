require "application_system_test_case"

class JobObjecticvesTest < ApplicationSystemTestCase
  setup do
    @job_objecticfe = job_objecticves(:one)
  end

  test "visiting the index" do
    visit job_objecticves_url
    assert_selector "h1", text: "Job Objecticves"
  end

  test "creating a Job objecticfe" do
    visit job_objecticves_url
    click_on "New Job Objecticfe"

    fill_in "Name", with: @job_objecticfe.name
    click_on "Create Job objecticfe"

    assert_text "Job objecticfe was successfully created"
    click_on "Back"
  end

  test "updating a Job objecticfe" do
    visit job_objecticves_url
    click_on "Edit", match: :first

    fill_in "Name", with: @job_objecticfe.name
    click_on "Update Job objecticfe"

    assert_text "Job objecticfe was successfully updated"
    click_on "Back"
  end

  test "destroying a Job objecticfe" do
    visit job_objecticves_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Job objecticfe was successfully destroyed"
  end
end
