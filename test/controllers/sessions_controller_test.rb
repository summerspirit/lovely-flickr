require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "new renders login form" do
    get :new
    assert_response :ok
  end

  test "create with invalid email and password renders errors" do
    post :create, user: {email: "foo", password: "bar"}
    assert flash[:error]
    assert_redirected_to new_session_path
  end

  test "create with valid email and password sets session id" do
    user = users(:nick)
    post :create, user: {email: user.email, password_digest: user.password_digest}
    assert_equal session[:user_id], user.id
  end
end
