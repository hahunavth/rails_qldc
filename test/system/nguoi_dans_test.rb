require "application_system_test_case"

class NguoiDansTest < ApplicationSystemTestCase
  setup do
    @nguoi_dan = nguoi_dans(:one)
  end

  test "visiting the index" do
    visit nguoi_dans_url
    assert_selector "h1", text: "Nguoi Dans"
  end

  test "creating a Nguoi dan" do
    visit nguoi_dans_url
    click_on "New Nguoi Dan"

    fill_in "Biet danh", with: @nguoi_dan.biet_danh
    fill_in "Dan toc", with: @nguoi_dan.dan_toc
    fill_in "Gioi tinh", with: @nguoi_dan.gioi_tinh
    fill_in "Ngay sinh", with: @nguoi_dan.ngay_sinh
    fill_in "Nghe nghiep", with: @nguoi_dan.nghe_nghiep
    fill_in "Ngyen quan", with: @nguoi_dan.ngyen_quan
    fill_in "Noi lam viec", with: @nguoi_dan.noi_lam_viec
    fill_in "Noi sinh", with: @nguoi_dan.noi_sinh
    fill_in "Noi thuong tru", with: @nguoi_dan.noi_thuong_tru
    fill_in "Qh voi chu ho", with: @nguoi_dan.qh_voi_chu_ho
    fill_in "Quoc tich", with: @nguoi_dan.quoc_tich
    fill_in "So cmnd", with: @nguoi_dan.so_cmnd
    fill_in "So ho chieu", with: @nguoi_dan.so_ho_chieu
    fill_in "So ho khau", with: @nguoi_dan.so_ho_khau
    fill_in "Ten", with: @nguoi_dan.ten
    fill_in "Ton giao", with: @nguoi_dan.ton_giao
    fill_in "Trinh do hoc van", with: @nguoi_dan.trinh_do_hoc_van
    fill_in "Trinh do ngoai ngu", with: @nguoi_dan.trinh_do_ngoai_ngu
    click_on "Create Nguoi dan"

    assert_text "Nguoi dan was successfully created"
    click_on "Back"
  end

  test "updating a Nguoi dan" do
    visit nguoi_dans_url
    click_on "Edit", match: :first

    fill_in "Biet danh", with: @nguoi_dan.biet_danh
    fill_in "Dan toc", with: @nguoi_dan.dan_toc
    fill_in "Gioi tinh", with: @nguoi_dan.gioi_tinh
    fill_in "Ngay sinh", with: @nguoi_dan.ngay_sinh
    fill_in "Nghe nghiep", with: @nguoi_dan.nghe_nghiep
    fill_in "Ngyen quan", with: @nguoi_dan.ngyen_quan
    fill_in "Noi lam viec", with: @nguoi_dan.noi_lam_viec
    fill_in "Noi sinh", with: @nguoi_dan.noi_sinh
    fill_in "Noi thuong tru", with: @nguoi_dan.noi_thuong_tru
    fill_in "Qh voi chu ho", with: @nguoi_dan.qh_voi_chu_ho
    fill_in "Quoc tich", with: @nguoi_dan.quoc_tich
    fill_in "So cmnd", with: @nguoi_dan.so_cmnd
    fill_in "So ho chieu", with: @nguoi_dan.so_ho_chieu
    fill_in "So ho khau", with: @nguoi_dan.so_ho_khau
    fill_in "Ten", with: @nguoi_dan.ten
    fill_in "Ton giao", with: @nguoi_dan.ton_giao
    fill_in "Trinh do hoc van", with: @nguoi_dan.trinh_do_hoc_van
    fill_in "Trinh do ngoai ngu", with: @nguoi_dan.trinh_do_ngoai_ngu
    click_on "Update Nguoi dan"

    assert_text "Nguoi dan was successfully updated"
    click_on "Back"
  end

  test "destroying a Nguoi dan" do
    visit nguoi_dans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Nguoi dan was successfully destroyed"
  end
end
