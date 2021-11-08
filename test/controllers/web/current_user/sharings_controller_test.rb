require 'test_helper'

class Web::CurrentUser::SharingsControllerTest < ActionController::TestCase
  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should post create' do
    user = create(:user)
    sign_in(user)
    shering_to_user = create(:user)

    post :create, params: { sharing: { user_id: user.id, shared_to_user_id: shering_to_user.id } }
    assert_response :redirect
  end
end
