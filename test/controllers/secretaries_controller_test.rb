require 'test_helper'

class SecretariesControllerTest < ActionController::TestCase
  setup do
    @secretary = secretaries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:secretaries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create secretary" do
    assert_difference('Secretary.count') do
      post :create, secretary: { administrative_id: @secretary.administrative_id }
    end

    assert_redirected_to secretary_path(assigns(:secretary))
  end

  test "should show secretary" do
    get :show, id: @secretary
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @secretary
    assert_response :success
  end

  test "should update secretary" do
    patch :update, id: @secretary, secretary: { administrative_id: @secretary.administrative_id }
    assert_redirected_to secretary_path(assigns(:secretary))
  end

  test "should destroy secretary" do
    assert_difference('Secretary.count', -1) do
      delete :destroy, id: @secretary
    end

    assert_redirected_to secretaries_path
  end
end
