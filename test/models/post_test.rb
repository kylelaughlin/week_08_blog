require 'test_helper'

class PostTest < ActiveSupport::TestCase

  test "valid at creation, under normal circumstances" do
    post = posts(:one)
    assert(post.valid?, "should be valid at creation, under normal circumstances")
  end

  test "invalid without a title" do
    post = posts(:one)
    post.title = nil
    refute(post.valid?, "Should be invalid without title")
  end

  test "invalid without content" do
    post = posts(:one)
    post.content = nil
    refute(post.valid?, "Should be invalid without content")
  end

  test "invalid without user_id" do
    post = posts(:one)
    post.user_id = nil
    refute(post.valid?, "Should be invalid without user_id")
  end

end
