require 'test_helper'

class Web::User::SpendingsControllerTest < ActionController::TestCase
  test 'should get index' do
    user = create(:user)

    get :index, params: {user_id: user.id}
    assert_response :success
  end
end
