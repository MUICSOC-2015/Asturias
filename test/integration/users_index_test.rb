require 'test_helper'

class UsersIndexTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  def setup
    @admin = users(:michael)
    @non_admin = users(:archer)
  end

  # test "index including pagination" do
  #   log_in_as(@user)
  #   get users_path
  #   assert_template 'users/index'
  #   assert_select 'div.pagination'
  #   User.paginate(page: 1).each do |user|
  #     assert_select 'a[href=?]', user_path(user), text: user.name
  #   end
  # end

  test "index as admin incluging pagination and delete links" do
    log_in_as(@admin)
    get users_path
  end
end
