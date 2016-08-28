require 'test_helper'

class MedicinaPreventivasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medicina_preventiva = medicina_preventivas(:one)
  end

  test "should get index" do
    get medicina_preventivas_url
    assert_response :success
  end

  test "should get new" do
    get new_medicina_preventiva_url
    assert_response :success
  end

  test "should create medicina_preventiva" do
    assert_difference('MedicinaPreventiva.count') do
      post medicina_preventivas_url, params: { medicina_preventiva: {  } }
    end

    assert_redirected_to medicina_preventiva_url(MedicinaPreventiva.last)
  end

  test "should show medicina_preventiva" do
    get medicina_preventiva_url(@medicina_preventiva)
    assert_response :success
  end

  test "should get edit" do
    get edit_medicina_preventiva_url(@medicina_preventiva)
    assert_response :success
  end

  test "should update medicina_preventiva" do
    patch medicina_preventiva_url(@medicina_preventiva), params: { medicina_preventiva: {  } }
    assert_redirected_to medicina_preventiva_url(@medicina_preventiva)
  end

  test "should destroy medicina_preventiva" do
    assert_difference('MedicinaPreventiva.count', -1) do
      delete medicina_preventiva_url(@medicina_preventiva)
    end

    assert_redirected_to medicina_preventivas_url
  end
end
