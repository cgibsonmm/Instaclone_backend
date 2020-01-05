require 'test_helper'

class ImagePostControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get image_post_index_url
    assert_response :success
  end

end
