require "test_helper"

class ContactLeadsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get contact_leads_new_url
    assert_response :success
  end

  test "should get create" do
    get contact_leads_create_url
    assert_response :success
  end
end
