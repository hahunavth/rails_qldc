require "application_system_test_case"

class TamTrusTest < ApplicationSystemTestCase
  setup do
    @tam_tru = tam_trus(:one)
  end

  test "visiting the index" do
    visit tam_trus_url
    assert_selector "h1", text: "Tam Trus"
  end

  test "creating a Tam tru" do
    visit tam_trus_url
    click_on "New Tam Tru"

    fill_in "Den ngay", with: @tam_tru.den_ngay
    fill_in "Dia chi", with: @tam_tru.dia_chi
    fill_in "Li do", with: @tam_tru.li_do
    fill_in "Nguoi dan", with: @tam_tru.nguoi_dan_id
    fill_in "Tu ngay", with: @tam_tru.tu_ngay
    click_on "Create Tam tru"

    assert_text "Tam tru was successfully created"
    click_on "Back"
  end

  test "updating a Tam tru" do
    visit tam_trus_url
    click_on "Edit", match: :first

    fill_in "Den ngay", with: @tam_tru.den_ngay
    fill_in "Dia chi", with: @tam_tru.dia_chi
    fill_in "Li do", with: @tam_tru.li_do
    fill_in "Nguoi dan", with: @tam_tru.nguoi_dan_id
    fill_in "Tu ngay", with: @tam_tru.tu_ngay
    click_on "Update Tam tru"

    assert_text "Tam tru was successfully updated"
    click_on "Back"
  end

  test "destroying a Tam tru" do
    visit tam_trus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tam tru was successfully destroyed"
  end
end
