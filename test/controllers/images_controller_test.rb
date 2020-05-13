require 'test_helper'

class ImagesControllerTest < ActionDispatch::IntegrationTest
  test 'shows flash on creation' do
    image = Image.new(url: 'https://i.picsum.photos/id/234/300/300.jpg')
    image.save!
    get image_path(image)
    assert_select '.notice', false

    post images_path, params: { image: { url: 'https://i.picsum.photos/id/234/300/300.jpg' } }
    follow_redirect!
    assert_select '.notice'
  end
end
