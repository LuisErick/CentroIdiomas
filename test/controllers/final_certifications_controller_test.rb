require 'test_helper'

class FinalCertificationsControllerTest < ActionController::TestCase
  setup do
    @final_certification = final_certifications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:final_certifications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create final_certification" do
    assert_difference('FinalCertification.count') do
      post :create, final_certification: { final_grade_id: @final_certification.final_grade_id }
    end

    assert_redirected_to final_certification_path(assigns(:final_certification))
  end

  test "should show final_certification" do
    get :show, id: @final_certification
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @final_certification
    assert_response :success
  end

  test "should update final_certification" do
    patch :update, id: @final_certification, final_certification: { final_grade_id: @final_certification.final_grade_id }
    assert_redirected_to final_certification_path(assigns(:final_certification))
  end

  test "should destroy final_certification" do
    assert_difference('FinalCertification.count', -1) do
      delete :destroy, id: @final_certification
    end

    assert_redirected_to final_certifications_path
  end
end
