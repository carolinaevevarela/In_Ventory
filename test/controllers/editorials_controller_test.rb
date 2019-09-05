require 'test_helper'

class EditorialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @editorial = editorials(:one)
  end

  test "should get index" do
    get editorials_url
    assert_response :success
  end

  test "should get new" do
    get new_editorial_url
    assert_response :success
  end

  test "should create editorial" do
    assert_difference('Editorial.count') do
      post editorials_url, params: { editorial: { address: @editorial.address, business_name: @editorial.business_name, contact: @editorial.contact, email: @editorial.email, phone: @editorial.phone, rut: @editorial.rut } }
    end

    assert_redirected_to editorial_url(Editorial.last)
  end

  test "should show editorial" do
    get editorial_url(@editorial)
    assert_response :success
  end

  test "should get edit" do
    get edit_editorial_url(@editorial)
    assert_response :success
  end

  test "should update editorial" do
    patch editorial_url(@editorial), params: { editorial: { address: @editorial.address, business_name: @editorial.business_name, contact: @editorial.contact, email: @editorial.email, phone: @editorial.phone, rut: @editorial.rut } }
    assert_redirected_to editorial_url(@editorial)
  end

  test "should destroy editorial" do
    assert_difference('Editorial.count', -1) do
      delete editorial_url(@editorial)
    end

    assert_redirected_to editorials_url
  end
end
