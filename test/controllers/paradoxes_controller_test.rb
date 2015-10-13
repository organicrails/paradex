require 'test_helper'

class ParadoxesControllerTest < ActionController::TestCase
  setup do
    @paradox = paradoxes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:paradoxes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create paradox" do
    assert_difference('Paradox.count') do
      post :create, paradox: { author: @paradox.author, description: @paradox.description, title: @paradox.title }
    end

    assert_redirected_to paradox_path(assigns(:paradox))
  end

  test "should show paradox" do
    get :show, id: @paradox
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @paradox
    assert_response :success
  end

  test "should update paradox" do
    patch :update, id: @paradox, paradox: { author: @paradox.author, description: @paradox.description, title: @paradox.title }
    assert_redirected_to paradox_path(assigns(:paradox))
  end

  test "should destroy paradox" do
    assert_difference('Paradox.count', -1) do
      delete :destroy, id: @paradox
    end

    assert_redirected_to paradoxes_path
  end
end
