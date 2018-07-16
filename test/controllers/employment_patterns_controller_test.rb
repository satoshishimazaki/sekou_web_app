require 'test_helper'

class EmploymentPatternsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employment_pattern = employment_patterns(:one)
  end

  test "should get index" do
    get employment_patterns_url
    assert_response :success
  end

  test "should get new" do
    get new_employment_pattern_url
    assert_response :success
  end

  test "should create employment_pattern" do
    assert_difference('EmploymentPattern.count') do
      post employment_patterns_url, params: { employment_pattern: { name: @employment_pattern.name } }
    end

    assert_redirected_to employment_pattern_url(EmploymentPattern.last)
  end

  test "should show employment_pattern" do
    get employment_pattern_url(@employment_pattern)
    assert_response :success
  end

  test "should get edit" do
    get edit_employment_pattern_url(@employment_pattern)
    assert_response :success
  end

  test "should update employment_pattern" do
    patch employment_pattern_url(@employment_pattern), params: { employment_pattern: { name: @employment_pattern.name } }
    assert_redirected_to employment_pattern_url(@employment_pattern)
  end

  test "should destroy employment_pattern" do
    assert_difference('EmploymentPattern.count', -1) do
      delete employment_pattern_url(@employment_pattern)
    end

    assert_redirected_to employment_patterns_url
  end
end
