require 'test_helper'

class UnicaStudentsControllerTest < ActionController::TestCase
  setup do
    @unica_student = unica_students(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:unica_students)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create unica_student" do
    assert_difference('UnicaStudent.count') do
      post :create, unica_student: { faculty_id: @unica_student.faculty_id, grade_id: @unica_student.grade_id, student_id: @unica_student.student_id }
    end

    assert_redirected_to unica_student_path(assigns(:unica_student))
  end

  test "should show unica_student" do
    get :show, id: @unica_student
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @unica_student
    assert_response :success
  end

  test "should update unica_student" do
    patch :update, id: @unica_student, unica_student: { faculty_id: @unica_student.faculty_id, grade_id: @unica_student.grade_id, student_id: @unica_student.student_id }
    assert_redirected_to unica_student_path(assigns(:unica_student))
  end

  test "should destroy unica_student" do
    assert_difference('UnicaStudent.count', -1) do
      delete :destroy, id: @unica_student
    end

    assert_redirected_to unica_students_path
  end
end
