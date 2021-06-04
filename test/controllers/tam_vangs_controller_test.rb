require "test_helper"

class TamVangsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tam_vang = tam_vangs(:one)
  end

  test "should get index" do
    get tam_vangs_url
    assert_response :success
  end

  test "should get new" do
    get new_tam_vang_url
    assert_response :success
  end

  test "should create tam_vang" do
    assert_difference('TamVang.count') do
      post tam_vangs_url, params: { tam_vang: { den_ngay: @tam_vang.den_ngay, dia_chi: @tam_vang.dia_chi, li_do: @tam_vang.li_do, nguoi_dan_id: @tam_vang.nguoi_dan_id, tu_ngay: @tam_vang.tu_ngay } }
    end

    assert_redirected_to tam_vang_url(TamVang.last)
  end

  test "should show tam_vang" do
    get tam_vang_url(@tam_vang)
    assert_response :success
  end

  test "should get edit" do
    get edit_tam_vang_url(@tam_vang)
    assert_response :success
  end

  test "should update tam_vang" do
    patch tam_vang_url(@tam_vang), params: { tam_vang: { den_ngay: @tam_vang.den_ngay, dia_chi: @tam_vang.dia_chi, li_do: @tam_vang.li_do, nguoi_dan_id: @tam_vang.nguoi_dan_id, tu_ngay: @tam_vang.tu_ngay } }
    assert_redirected_to tam_vang_url(@tam_vang)
  end

  test "should destroy tam_vang" do
    assert_difference('TamVang.count', -1) do
      delete tam_vang_url(@tam_vang)
    end

    assert_redirected_to tam_vangs_url
  end
end
