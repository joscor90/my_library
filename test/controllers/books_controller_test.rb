require 'test_helper'

class BooksControllerTest < ActionController::TestCase
    test 'get index' do
        get :index
        assert_response :success
        assert_template :index
    end
end