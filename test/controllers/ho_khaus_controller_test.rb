require "test_helper"

class HoKhausControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ho_khau = ho_khaus(:one)
  end

  test "should get index" do
    get ho_khaus_url
    assert_response :success
  end

  test "should get new" do
    get new_ho_khau_url
    assert_response :success
  end

  test "should create ho_khau" do
    assert_difference('HoKhau.count') do
      post ho_khaus_url, params: { ho_khau: { dia_chi: @ho_khau.dia_chi, ngay_cap: @ho_khau.ngay_cap, noi_cap: @ho_khau.noi_cap } }
    end

    assert_redirected_to ho_khau_url(HoKhau.last)
  end

  test "should show ho_khau" do
    get ho_khau_url(@ho_khau)
    assert_response :success
  end

  test "should get edit" do
    get edit_ho_khau_url(@ho_khau)
    assert_response :success
  end

  test "should update ho_khau" do
    patch ho_khau_url(@ho_khau), params: { ho_khau: { dia_chi: @ho_khau.dia_chi, ngay_cap: @ho_khau.ngay_cap, noi_cap: @ho_khau.noi_cap } }
    assert_redirected_to ho_khau_url(@ho_khau)
  end

  test "should destroy ho_khau" do
    assert_difference('HoKhau.count', -1) do
      delete ho_khau_url(@ho_khau)
    end

    assert_redirected_to ho_khaus_url
  end
end
