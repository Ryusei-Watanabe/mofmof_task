require "application_system_test_case"

class HouseInformationsTest < ApplicationSystemTestCase
  setup do
    @house_information = house_informations(:one)
  end

  test "visiting the index" do
    visit house_informations_url
    assert_selector "h1", text: "House Informations"
  end

  test "creating a House information" do
    visit house_informations_url
    click_on "New House Information"

    fill_in "Adsress", with: @house_information.adsress
    fill_in "Age of a build", with: @house_information.age_of_a_build
    fill_in "House rent", with: @house_information.house_rent
    fill_in "Property name", with: @house_information.property_name
    fill_in "Remark column", with: @house_information.remark_column
    click_on "Create House information"

    assert_text "House information was successfully created"
    click_on "Back"
  end

  test "updating a House information" do
    visit house_informations_url
    click_on "Edit", match: :first

    fill_in "Adsress", with: @house_information.adsress
    fill_in "Age of a build", with: @house_information.age_of_a_build
    fill_in "House rent", with: @house_information.house_rent
    fill_in "Property name", with: @house_information.property_name
    fill_in "Remark column", with: @house_information.remark_column
    click_on "Update House information"

    assert_text "House information was successfully updated"
    click_on "Back"
  end

  test "destroying a House information" do
    visit house_informations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "House information was successfully destroyed"
  end
end
