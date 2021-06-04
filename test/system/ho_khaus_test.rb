require "application_system_test_case"

class HoKhausTest < ApplicationSystemTestCase
  setup do
    @ho_khau = ho_khaus(:one)
  end

  test "visiting the index" do
    visit ho_khaus_url
    assert_selector "h1", text: "Ho Khaus"
  end

  test "creating a Ho khau" do
    visit ho_khaus_url
    click_on "New Ho Khau"

    fill_in "Dia chi", with: @ho_khau.dia_chi
    fill_in "Ngay cap", with: @ho_khau.ngay_cap
    fill_in "Noi cap", with: @ho_khau.noi_cap
    click_on "Create Ho khau"

    assert_text "Ho khau was successfully created"
    click_on "Back"
  end

  test "updating a Ho khau" do
    visit ho_khaus_url
    click_on "Edit", match: :first

    fill_in "Dia chi", with: @ho_khau.dia_chi
    fill_in "Ngay cap", with: @ho_khau.ngay_cap
    fill_in "Noi cap", with: @ho_khau.noi_cap
    click_on "Update Ho khau"

    assert_text "Ho khau was successfully updated"
    click_on "Back"
  end

  test "destroying a Ho khau" do
    visit ho_khaus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ho khau was successfully destroyed"
  end
end
