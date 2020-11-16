require 'test_helper'

class RefillsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get refills_new_url
    assert_response :success
  end

  test "should get create" do
    get refills_create_url
    assert_response :success
  end

  test "should get index" do
    get refills_index_url
    assert_response :success
  end

end
