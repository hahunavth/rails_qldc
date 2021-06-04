require "test_helper"

class NguoiDansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nguoi_dan = nguoi_dans(:one)
  end

  test "should get index" do
    get nguoi_dans_url
    assert_response :success
  end

  test "should get new" do
    get new_nguoi_dan_url
    assert_response :success
  end

  test "should create nguoi_dan" do
    assert_difference('NguoiDan.count') do
      post nguoi_dans_url, params: { nguoi_dan: { biet_danh: @nguoi_dan.biet_danh, dan_toc: @nguoi_dan.dan_toc, gioi_tinh: @nguoi_dan.gioi_tinh, ngay_sinh: @nguoi_dan.ngay_sinh, nghe_nghiep: @nguoi_dan.nghe_nghiep, ngyen_quan: @nguoi_dan.ngyen_quan, noi_lam_viec: @nguoi_dan.noi_lam_viec, noi_sinh: @nguoi_dan.noi_sinh, noi_thuong_tru: @nguoi_dan.noi_thuong_tru, qh_voi_chu_ho: @nguoi_dan.qh_voi_chu_ho, quoc_tich: @nguoi_dan.quoc_tich, so_cmnd: @nguoi_dan.so_cmnd, so_ho_chieu: @nguoi_dan.so_ho_chieu, so_ho_khau: @nguoi_dan.so_ho_khau, ten: @nguoi_dan.ten, ton_giao: @nguoi_dan.ton_giao, trinh_do_hoc_van: @nguoi_dan.trinh_do_hoc_van, trinh_do_ngoai_ngu: @nguoi_dan.trinh_do_ngoai_ngu } }
    end

    assert_redirected_to nguoi_dan_url(NguoiDan.last)
  end

  test "should show nguoi_dan" do
    get nguoi_dan_url(@nguoi_dan)
    assert_response :success
  end

  test "should get edit" do
    get edit_nguoi_dan_url(@nguoi_dan)
    assert_response :success
  end

  test "should update nguoi_dan" do
    patch nguoi_dan_url(@nguoi_dan), params: { nguoi_dan: { biet_danh: @nguoi_dan.biet_danh, dan_toc: @nguoi_dan.dan_toc, gioi_tinh: @nguoi_dan.gioi_tinh, ngay_sinh: @nguoi_dan.ngay_sinh, nghe_nghiep: @nguoi_dan.nghe_nghiep, ngyen_quan: @nguoi_dan.ngyen_quan, noi_lam_viec: @nguoi_dan.noi_lam_viec, noi_sinh: @nguoi_dan.noi_sinh, noi_thuong_tru: @nguoi_dan.noi_thuong_tru, qh_voi_chu_ho: @nguoi_dan.qh_voi_chu_ho, quoc_tich: @nguoi_dan.quoc_tich, so_cmnd: @nguoi_dan.so_cmnd, so_ho_chieu: @nguoi_dan.so_ho_chieu, so_ho_khau: @nguoi_dan.so_ho_khau, ten: @nguoi_dan.ten, ton_giao: @nguoi_dan.ton_giao, trinh_do_hoc_van: @nguoi_dan.trinh_do_hoc_van, trinh_do_ngoai_ngu: @nguoi_dan.trinh_do_ngoai_ngu } }
    assert_redirected_to nguoi_dan_url(@nguoi_dan)
  end

  test "should destroy nguoi_dan" do
    assert_difference('NguoiDan.count', -1) do
      delete nguoi_dan_url(@nguoi_dan)
    end

    assert_redirected_to nguoi_dans_url
  end
end
