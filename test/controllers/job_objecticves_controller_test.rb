require 'test_helper'

class JobObjecticvesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job_objecticfe = job_objecticves(:one)
  end

  test "should get index" do
    get job_objecticves_url
    assert_response :success
  end

  test "should get new" do
    get new_job_objecticfe_url
    assert_response :success
  end

  test "should create job_objecticfe" do
    assert_difference('JobObjecticfe.count') do
      post job_objecticves_url, params: { job_objecticfe: { name: @job_objecticfe.name } }
    end

    assert_redirected_to job_objecticfe_url(JobObjecticfe.last)
  end

  test "should show job_objecticfe" do
    get job_objecticfe_url(@job_objecticfe)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_objecticfe_url(@job_objecticfe)
    assert_response :success
  end

  test "should update job_objecticfe" do
    patch job_objecticfe_url(@job_objecticfe), params: { job_objecticfe: { name: @job_objecticfe.name } }
    assert_redirected_to job_objecticfe_url(@job_objecticfe)
  end

  test "should destroy job_objecticfe" do
    assert_difference('JobObjecticfe.count', -1) do
      delete job_objecticfe_url(@job_objecticfe)
    end

    assert_redirected_to job_objecticves_url
  end
end
