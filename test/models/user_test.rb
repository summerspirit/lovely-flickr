require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "users should have a name and an email" do
    u = User.new(username: nil, email: nil)
    u.valid?

    assert u.errors[:username].any?, "users need a username"
    assert u.errors[:email].any?, "users need an email"

    u.username = "a-valid-username"
    u.email = "valid@example.com"
    assert u.valid?
  end

  test "users should have a unique username" do
    u1 = users(:nick)
    u2 = users(:edward)

    u2.username = u1.username
    u2.valid?

    assert u2.errors[:username].any?
  end
end
