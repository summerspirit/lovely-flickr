require 'test_helper'

class PhotosControllerTest < ActionController::TestCase
  test "cannot access photos index if not logged in" do
    get :index
    assert_redirected_to new_session_path
  end
end
