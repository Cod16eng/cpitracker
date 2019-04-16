require 'test_helper'

class RelatoriControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get relatori_index_url
    assert_response :success
  end

  test "should get new" do
    get relatori_new_url
    assert_response :success
  end

  test "should get edit" do
    get relatori_edit_url
    assert_response :success
  end

  test "should get show" do
    get relatori_show_url
    assert_response :success
  end

end
