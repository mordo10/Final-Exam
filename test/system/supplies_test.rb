require "application_system_test_case"

class SuppliesTest < ApplicationSystemTestCase
  setup do
    @supply = supplies(:one)
  end

  test "visiting the index" do
    visit supplies_url
    assert_selector "h1", text: "Supplies"
  end

  test "creating a Supply" do
    visit supplies_url
    click_on "New Supply"

    fill_in "Art name", with: @supply.art_name
    fill_in "Art type", with: @supply.art_type
    fill_in "Del date", with: @supply.del_date
    fill_in "Stock", with: @supply.stock
    click_on "Create Supply"

    assert_text "Supply was successfully created"
    click_on "Back"
  end

  test "updating a Supply" do
    visit supplies_url
    click_on "Edit", match: :first

    fill_in "Art name", with: @supply.art_name
    fill_in "Art type", with: @supply.art_type
    fill_in "Del date", with: @supply.del_date
    fill_in "Stock", with: @supply.stock
    click_on "Update Supply"

    assert_text "Supply was successfully updated"
    click_on "Back"
  end

  test "destroying a Supply" do
    visit supplies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Supply was successfully destroyed"
  end
end
