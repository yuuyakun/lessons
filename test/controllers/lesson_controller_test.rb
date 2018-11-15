require 'test_helper'

class LessonControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get lesson_top_url
    assert_response :success
  end

end
