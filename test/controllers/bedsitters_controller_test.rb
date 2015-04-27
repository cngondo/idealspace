require 'test_helper'

class BedsittersControllerTest < ActionController::TestCase
  setup do
    @bedsitter = bedsitters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bedsitters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bedsitter" do
    assert_difference('Bedsitter.count') do
      post :create, bedsitter: { residence: @bedsitter.residence, street: @bedsitter.street, type: @bedsitter.type }
    end

    assert_redirected_to bedsitter_path(assigns(:bedsitter))
  end

  test "should show bedsitter" do
    get :show, id: @bedsitter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bedsitter
    assert_response :success
  end

  test "should update bedsitter" do
    patch :update, id: @bedsitter, bedsitter: { residence: @bedsitter.residence, street: @bedsitter.street, type: @bedsitter.type }
    assert_redirected_to bedsitter_path(assigns(:bedsitter))
  end

  test "should destroy bedsitter" do
    assert_difference('Bedsitter.count', -1) do
      delete :destroy, id: @bedsitter
    end

    assert_redirected_to bedsitters_path
  end
end
