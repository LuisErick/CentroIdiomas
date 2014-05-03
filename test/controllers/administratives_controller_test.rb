require 'test_helper'

class AdministrativesControllerTest < ActionController::TestCase
  setup do
    @administrative = administratives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:administratives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create administrative" do
    assert_difference('Administrative.count') do
      post :create, administrative: { person_id: @administrative.person_id }
    end

    assert_redirected_to administrative_path(assigns(:administrative))
  end

  test "should show administrative" do
    get :show, id: @administrative
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @administrative
    assert_response :success
  end

  test "should update administrative" do
    patch :update, id: @administrative, administrative: { person_id: @administrative.person_id }
    assert_redirected_to administrative_path(assigns(:administrative))
  end

  test "should destroy administrative" do
    assert_difference('Administrative.count', -1) do
      delete :destroy, id: @administrative
    end

    assert_redirected_to administratives_path
  end
end
