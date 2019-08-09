# frozen_string_literal: true

require 'test_helper'

class UserShowTest < ActionDispatch::IntegrationTest
  test 'redirected to root_url if user accessed is not activated' do
    post users_path, params: { user: { name: 'Example User',
                                       email: 'user@valid.com',
                                       password: 'foobar',
                                       password_confirmation: 'foobar' } }

    user = assigns(:user)
    get user_path(user)
    assert_redirected_to root_url
  end
end
