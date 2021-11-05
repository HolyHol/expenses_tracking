require 'test_helper'

class Web::SpendingsControllerTest < ActionController::TestCase
  test 'should get new' do
    user = create(:user)
    sign_in(user)

    get :new
    assert_response :success
  end

  test 'should get index' do
    user = create(:user)
    sign_in(user)

    get :index
    assert_response :success
  end

  test 'should post create' do
    user = create(:user)
    sign_in(user)

    post :create, params: { spending: attributes_for(:spending) }
    assert_response :redirect
  end

  test 'should get edit' do
    user = create(:user)
    sign_in(user)

    spending = create(:spending, user: user)
    get :edit, params: { id: spending.id }
    assert_response :success
  end

  test 'should patch update' do
    user = create(:user)
    sign_in(user)

    spending = create(:spending, user: user)
    patch :update, params: { id: spending.id, spending: attributes_for(:spending) }
    assert_response :redirect
  end

  test 'should delete destroy' do
    user = create(:user)
    sign_in(user)

    spending = create(:spending, user: user)
    delete :destroy, params: { id: spending.id }
    assert_response :redirect
  end
end
