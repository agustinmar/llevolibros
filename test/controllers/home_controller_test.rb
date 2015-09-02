require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get inicio" do
    get :inicio
    assert_response :success
  end

  test "should get solicita" do
    get :solicita
    assert_response :success
  end

  test "should get contacto" do
    get :contacto
    assert_response :success
  end

end
