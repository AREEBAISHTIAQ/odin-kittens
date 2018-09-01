require 'test_helper'

class KittenControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get kitten_index_url
    assert_response :success
  end

  test "should get new" do
    get kitten_new_url
    assert_response :success
  end

  test "should get show" do
    get kitten_show_url
    assert_response :success
  end

  test "should get edit" do
    get kitten_edit_url
    assert_response :success
  end

end
