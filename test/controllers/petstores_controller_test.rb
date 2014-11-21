require 'test_helper'

class PetstoresControllerTest < ActionController::TestCase
  setup do
    @petstore = petstores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:petstores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create petstore" do
    assert_difference('Petstore.count') do
      post :create, petstore: { name: @petstore.name }
    end

    assert_redirected_to petstore_path(assigns(:petstore))
  end

  test "should show petstore" do
    get :show, id: @petstore
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @petstore
    assert_response :success
  end

  test "should update petstore" do
    patch :update, id: @petstore, petstore: { name: @petstore.name }
    assert_redirected_to petstore_path(assigns(:petstore))
  end

  test "should destroy petstore" do
    assert_difference('Petstore.count', -1) do
      delete :destroy, id: @petstore
    end

    assert_redirected_to petstores_path
  end
end
