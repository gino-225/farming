require 'test_helper'

class PlantingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @planting = plantings(:one)
  end

  test "should get index" do
    get plantings_url
    assert_response :success
  end

  test "should get new" do
    get new_planting_url
    assert_response :success
  end

  test "should create planting" do
    assert_difference('Planting.count') do
      post plantings_url, params: { planting: { date: @planting.date, seed_treated: @planting.seed_treated, soil_condition: @planting.soil_condition } }
    end

    assert_redirected_to planting_url(Planting.last)
  end

  test "should show planting" do
    get planting_url(@planting)
    assert_response :success
  end

  test "should get edit" do
    get edit_planting_url(@planting)
    assert_response :success
  end

  test "should update planting" do
    patch planting_url(@planting), params: { planting: { date: @planting.date, seed_treated: @planting.seed_treated, soil_condition: @planting.soil_condition } }
    assert_redirected_to planting_url(@planting)
  end

  test "should destroy planting" do
    assert_difference('Planting.count', -1) do
      delete planting_url(@planting)
    end

    assert_redirected_to plantings_url
  end
end
