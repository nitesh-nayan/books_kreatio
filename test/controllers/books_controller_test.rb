require 'test_helper'

class BooksControllerTest < ActionController::TestCase
  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get boks" do
    get :boks
    assert_response :success
  end

  test "should get category" do
    get :category
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get find" do
    get :find
    assert_response :success
  end

  test "should get my_account" do
    get :my_account
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

end
