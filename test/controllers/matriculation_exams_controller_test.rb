require 'test_helper'

class MatriculationExamsControllerTest < ActionController::TestCase
  setup do
    @matriculation_exam = matriculation_exams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:matriculation_exams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create matriculation_exam" do
    assert_difference('MatriculationExam.count') do
      post :create, matriculation_exam: { institution: @matriculation_exam.institution, matriculation_id: @matriculation_exam.matriculation_id, teacher_id: @matriculation_exam.teacher_id }
    end

    assert_redirected_to matriculation_exam_path(assigns(:matriculation_exam))
  end

  test "should show matriculation_exam" do
    get :show, id: @matriculation_exam
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @matriculation_exam
    assert_response :success
  end

  test "should update matriculation_exam" do
    patch :update, id: @matriculation_exam, matriculation_exam: { institution: @matriculation_exam.institution, matriculation_id: @matriculation_exam.matriculation_id, teacher_id: @matriculation_exam.teacher_id }
    assert_redirected_to matriculation_exam_path(assigns(:matriculation_exam))
  end

  test "should destroy matriculation_exam" do
    assert_difference('MatriculationExam.count', -1) do
      delete :destroy, id: @matriculation_exam
    end

    assert_redirected_to matriculation_exams_path
  end
end
