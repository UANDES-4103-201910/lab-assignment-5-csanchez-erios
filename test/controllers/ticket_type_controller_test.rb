require 'test_helper'

class TicketTypeControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get ticket_type_create_url
    assert_response :success
  end

  test "should get update" do
    get ticket_type_update_url
    assert_response :success
  end

  test "should get destroy" do
    get ticket_type_destroy_url
    assert_response :success
  end

end
