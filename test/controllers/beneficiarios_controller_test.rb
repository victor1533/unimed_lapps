require 'test_helper'

class BeneficiariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @beneficiarios = beneficiarios(:one)
  end

  test "should get index" do
    get beneficiarios_index_url
    assert_response :success
  end

  test "should get new" do
    get new_beneficiarios_url
    assert_response :success
  end

  test "should create beneficiarios" do
    assert_difference('Beneficiarios.count') do
      post beneficiarios_index_url, params: { beneficiarios: {  } }
    end

    assert_redirected_to beneficiarios_url(Beneficiarios.last)
  end

  test "should show beneficiarios" do
    get beneficiarios_url(@beneficiarios)
    assert_response :success
  end

  test "should get edit" do
    get edit_beneficiarios_url(@beneficiarios)
    assert_response :success
  end

  test "should update beneficiarios" do
    patch beneficiarios_url(@beneficiarios), params: { beneficiarios: {  } }
    assert_redirected_to beneficiarios_url(@beneficiarios)
  end

  test "should destroy beneficiarios" do
    assert_difference('Beneficiarios.count', -1) do
      delete beneficiarios_url(@beneficiarios)
    end

    assert_redirected_to beneficiarios_index_url
  end
end
