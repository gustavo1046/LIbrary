require "application_system_test_case"

class RentsTest < ApplicationSystemTestCase
  setup do
    @rent = rents(:one)
  end

  test "visiting the index" do
    visit rents_url
    assert_selector "h1", text: "Rents"
  end

  test "should create rent" do
    visit rents_url
    click_on "New rent"

    fill_in "Age", with: @rent.age
    fill_in "Devolution-date", with: @rent.devolution-date
    fill_in "Name", with: @rent.name
    click_on "Create Rent"

    assert_text "Rent was successfully created"
    click_on "Back"
  end

  test "should update Rent" do
    visit rent_url(@rent)
    click_on "Edit this rent", match: :first

    fill_in "Age", with: @rent.age
    fill_in "Devolution-date", with: @rent.devolution-date
    fill_in "Name", with: @rent.name
    click_on "Update Rent"

    assert_text "Rent was successfully updated"
    click_on "Back"
  end

  test "should destroy Rent" do
    visit rent_url(@rent)
    click_on "Destroy this rent", match: :first

    assert_text "Rent was successfully destroyed"
  end
end
