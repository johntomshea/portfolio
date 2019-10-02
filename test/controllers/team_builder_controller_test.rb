require 'test_helper'

class TeamBuilderControllerTest < ActionDispatch::IntegrationTest
  test "should get start" do
    get team_builder_start_url
    assert_response :success
  end

  test "should get generate" do
    get team_builder_generate_url
    assert_response :success
  end

end
