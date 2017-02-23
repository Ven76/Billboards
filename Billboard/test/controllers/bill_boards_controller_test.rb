require 'test_helper'

class BillBoardsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bill_boards_index_url
    assert_response :success
  end

  test "should get show" do
    get bill_boards_show_url
    assert_response :success
  end

  test "should get new" do
    get bill_boards_new_url
    assert_response :success
  end

  test "should get edit" do
    get bill_boards_edit_url
    assert_response :success
  end

end
