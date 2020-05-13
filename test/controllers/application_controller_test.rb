require 'test_helper'

class ApplicationControllerTest < ActionDispatch::IntegrationTest
  test 'displays a heart' do
    get '/'
    assert_select 'h1', 'rails <3'
  end
end
