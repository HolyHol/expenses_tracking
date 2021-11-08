require 'test_helper'

class Web::User::SpendingsControllerTest < ActionController::TestCase
  test 'should get index' do
    user = create(:user)
    sign_in(user)
    user_another = create(:user)
    sharing = create(:sharing, shared_to_user_id: user.id, user_id: user_another.id)

    get :index, params: { user_id: user_another.id }
    assert_response :success
  end

  test 'should not get index' do
    user = create(:user)
    sign_in(user)
    user_another = create(:user)

    get :index, params: { user_id: user_another.id }
    assert_response :redirect
  end
end
