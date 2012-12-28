require 'test_helper'

class CandidatesControllerTest < ActionController::TestCase
  setup do
    @candidate = candidates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:candidates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create candidate" do
    assert_difference('Candidate.count') do
      post :create, candidate: { age: @candidate.age, college: @candidate.college, date_of_interview: @candidate.date_of_interview, email: @candidate.email, experience: @candidate.experience, interviewers: @candidate.interviewers, mobile: @candidate.mobile, name: @candidate.name, platform: @candidate.platform, round: @candidate.round, sex: @candidate.sex, status: @candidate.status, vendor: @candidate.vendor, year_of_passing: @candidate.year_of_passing }
    end

    assert_redirected_to candidate_path(assigns(:candidate))
  end

  test "should show candidate" do
    get :show, id: @candidate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @candidate
    assert_response :success
  end

  test "should update candidate" do
    put :update, id: @candidate, candidate: { age: @candidate.age, college: @candidate.college, date_of_interview: @candidate.date_of_interview, email: @candidate.email, experience: @candidate.experience, interviewers: @candidate.interviewers, mobile: @candidate.mobile, name: @candidate.name, platform: @candidate.platform, round: @candidate.round, sex: @candidate.sex, status: @candidate.status, vendor: @candidate.vendor, year_of_passing: @candidate.year_of_passing }
    assert_redirected_to candidate_path(assigns(:candidate))
  end

  test "should destroy candidate" do
    assert_difference('Candidate.count', -1) do
      delete :destroy, id: @candidate
    end

    assert_redirected_to candidates_path
  end
end
