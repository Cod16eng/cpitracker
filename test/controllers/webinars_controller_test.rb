require 'test_helper'

class WebinarsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get webinars_index_url
    assert_response :success
  end

  test "should get new" do
    get webinars_new_url
    assert_response :success
  end

  test "should get create" do
    get webinars_create_url
    assert_response :success
  end

  test "should get edit" do
    get webinars_edit_url
    assert_response :success
  end

  test "should get update" do
    get webinars_update_url
    assert_response :success
  end

  test "should get show" do
    get webinars_show_url
    assert_response :success
  end

  test "should get destroy" do
    get webinars_destroy_url
    assert_response :success
  end

end
