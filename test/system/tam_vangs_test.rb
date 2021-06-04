require "application_system_test_case"

class TamVangsTest < ApplicationSystemTestCase
  setup do
    @tam_vang = tam_vangs(:one)
  end

  test "visiting the index" do
    visit tam_vangs_url
    assert_selector "h1", text: "Tam Vangs"
  end

  test "creating a Tam vang" do
    visit tam_vangs_url
    click_on "New Tam Vang"

    fill_in "Den ngay", with: @tam_vang.den_ngay
    fill_in "Dia chi", with: @tam_vang.dia_chi
    fill_in "Li do", with: @tam_vang.li_do
    fill_in "Nguoi dan", with: @tam_vang.nguoi_dan_id
    fill_in "Tu ngay", with: @tam_vang.tu_ngay
    click_on "Create Tam vang"

    assert_text "Tam vang was successfully created"
    click_on "Back"
  end

  test "updating a Tam vang" do
    visit tam_vangs_url
    click_on "Edit", match: :first

    fill_in "Den ngay", with: @tam_vang.den_ngay
    fill_in "Dia chi", with: @tam_vang.dia_chi
    fill_in "Li do", with: @tam_vang.li_do
    fill_in "Nguoi dan", with: @tam_vang.nguoi_dan_id
    fill_in "Tu ngay", with: @tam_vang.tu_ngay
    click_on "Update Tam vang"

    assert_text "Tam vang was successfully updated"
    click_on "Back"
  end

  test "destroying a Tam vang" do
    visit tam_vangs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tam vang was successfully destroyed"
  end
end
