require 'test_helper'

class BooksControllerTest < ActionController::TestCase
    test 'get index' do
        get :index
        assert_response :success
        assert_template :index
        assert_not_nil assigns(:posts)
    end
end