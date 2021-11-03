require 'test_helper'

class Web::UsersControllerTest < ActionController::TestCase
  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should post create' do
    post :create, params: { user: attributes_for(:user) }
    assert_response :redirect
  end
end
