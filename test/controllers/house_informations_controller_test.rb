require 'test_helper'

class HouseInformationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @house_information = house_informations(:one)
  end

  test "should get index" do
    get house_informations_url
    assert_response :success
  end

  test "should get new" do
    get new_house_information_url
    assert_response :success
  end

  test "should create house_information" do
    assert_difference('HouseInformation.count') do
      post house_informations_url, params: { house_information: { adsress: @house_information.adsress, age_of_a_build: @house_information.age_of_a_build, house_rent: @house_information.house_rent, property_name: @house_information.property_name, remark_column: @house_information.remark_column } }
    end

    assert_redirected_to house_information_url(HouseInformation.last)
  end

  test "should show house_information" do
    get house_information_url(@house_information)
    assert_response :success
  end

  test "should get edit" do
    get edit_house_information_url(@house_information)
    assert_response :success
  end

  test "should update house_information" do
    patch house_information_url(@house_information), params: { house_information: { adsress: @house_information.adsress, age_of_a_build: @house_information.age_of_a_build, house_rent: @house_information.house_rent, property_name: @house_information.property_name, remark_column: @house_information.remark_column } }
    assert_redirected_to house_information_url(@house_information)
  end

  test "should destroy house_information" do
    assert_difference('HouseInformation.count', -1) do
      delete house_information_url(@house_information)
    end

    assert_redirected_to house_informations_url
  end
end
