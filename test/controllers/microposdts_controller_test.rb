require 'test_helper'

class MicroposdtsControllerTest < ActionController::TestCase
  setup do
    @microposdt = microposdts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:microposdts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create microposdt" do
    assert_difference('Microposdt.count') do
      post :create, microposdt: { content: @microposdt.content, user_id: @microposdt.user_id }
    end

    assert_redirected_to microposdt_path(assigns(:microposdt))
  end

  test "should show microposdt" do
    get :show, id: @microposdt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @microposdt
    assert_response :success
  end

  test "should update microposdt" do
    patch :update, id: @microposdt, microposdt: { content: @microposdt.content, user_id: @microposdt.user_id }
    assert_redirected_to microposdt_path(assigns(:microposdt))
  end

  test "should destroy microposdt" do
    assert_difference('Microposdt.count', -1) do
      delete :destroy, id: @microposdt
    end

    assert_redirected_to microposdts_path
  end
end
