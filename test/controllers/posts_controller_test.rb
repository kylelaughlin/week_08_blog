require 'test_helper'

class PostsControllerTest < ActionController::TestCase

  setup do
    @post = posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @post
    assert_response :success
  end

  test "should get show" do
    get :show, id: @post
    assert_response :success
  end

end
