require "test_helper"

class TamTrusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tam_tru = tam_trus(:one)
  end

  test "should get index" do
    get tam_trus_url
    assert_response :success
  end

  test "should get new" do
    get new_tam_tru_url
    assert_response :success
  end

  test "should create tam_tru" do
    assert_difference('TamTru.count') do
      post tam_trus_url, params: { tam_tru: { den_ngay: @tam_tru.den_ngay, dia_chi: @tam_tru.dia_chi, li_do: @tam_tru.li_do, nguoi_dan_id: @tam_tru.nguoi_dan_id, tu_ngay: @tam_tru.tu_ngay } }
    end

    assert_redirected_to tam_tru_url(TamTru.last)
  end

  test "should show tam_tru" do
    get tam_tru_url(@tam_tru)
    assert_response :success
  end

  test "should get edit" do
    get edit_tam_tru_url(@tam_tru)
    assert_response :success
  end

  test "should update tam_tru" do
    patch tam_tru_url(@tam_tru), params: { tam_tru: { den_ngay: @tam_tru.den_ngay, dia_chi: @tam_tru.dia_chi, li_do: @tam_tru.li_do, nguoi_dan_id: @tam_tru.nguoi_dan_id, tu_ngay: @tam_tru.tu_ngay } }
    assert_redirected_to tam_tru_url(@tam_tru)
  end

  test "should destroy tam_tru" do
    assert_difference('TamTru.count', -1) do
      delete tam_tru_url(@tam_tru)
    end

    assert_redirected_to tam_trus_url
  end
end
