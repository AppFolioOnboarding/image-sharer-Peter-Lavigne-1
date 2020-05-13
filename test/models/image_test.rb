require 'test_helper'

class ImageTest < ActiveSupport::TestCase
  test 'can create an image' do
    image = Image.new(url: 'https://i.picsum.photos/id/234/300/300.jpg')
    assert_equal 0, Image.count
    image.save!
    assert_equal 1, Image.count
    assert_equal 'https://i.picsum.photos/id/234/300/300.jpg', Image.find(image.id).url
  end
end
