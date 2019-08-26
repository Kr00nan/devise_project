require 'test_helper'

class InspirationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get inspirations_index_url
    assert_response :success
  end

  test "should get show" do
    get inspirations_show_url
    assert_response :success
  end

  test "should get new" do
    get inspirations_new_url
    assert_response :success
  end

  test "should get edit" do
    get inspirations_edit_url
    assert_response :success
  end

end
