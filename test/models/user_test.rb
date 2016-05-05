require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "valid under normal circumstances" do
    user = User.new(name: "Shawn", email: "angry_gorilla_67@yahoo.com", picture_url: "http//:picture-url.com", bio: "Loves to copy Kyle's code.")
    assert(user.valid?, "This should be valid under normal circumstances.")
  end

  test "invalid without name" do
    user = User.new(name: "Shawn", email: "angry_gorilla_67@yahoo.com", picture_url: "http//:picture-url.com", bio: "Loves to copy Kyle's code.")
    user.name = nil
    refute(user.valid?, "This should fail without a name.")
  end

  test "invalid without email" do
    user = User.new(name: "Shawn", email: "angry_gorilla_67@yahoo.com", picture_url: "http//:picture-url.com", bio: "Loves to copy Kyle's code.")
    user.email = nil
    refute(user.valid?, "This should fail without a email.")
  end

  test "should be invalid with a duplicate email" do
    user = User.new(name: "Shawn", email: "angry_gorilla_67@yahoo.com", picture_url: "http//:picture-url.com", bio: "Loves to copy Kyle's code.")
    user.save
    dup_user = user.dup
    refute(dup_user.valid?, "Should fail if duplicate emails.")
  end

end
