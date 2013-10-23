require 'test_helper'

class GastrackersControllerTest < ActionController::TestCase
  setup do
    @gastracker = gastrackers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gastrackers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gastracker" do
    assert_difference('Gastracker.count') do
      post :create, gastracker: { artificialprice: @gastracker.artificialprice, date: @gastracker.date, gallons: @gastracker.gallons, marketprice: @gastracker.marketprice, savingstransfer: @gastracker.savingstransfer, totalfillupcost: @gastracker.totalfillupcost, totalregularfillup: @gastracker.totalregularfillup, vehicle: @gastracker.vehicle }
    end

    assert_redirected_to gastracker_path(assigns(:gastracker))
  end

  test "should show gastracker" do
    get :show, id: @gastracker
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gastracker
    assert_response :success
  end

  test "should update gastracker" do
    put :update, id: @gastracker, gastracker: { artificialprice: @gastracker.artificialprice, date: @gastracker.date, gallons: @gastracker.gallons, marketprice: @gastracker.marketprice, savingstransfer: @gastracker.savingstransfer, totalfillupcost: @gastracker.totalfillupcost, totalregularfillup: @gastracker.totalregularfillup, vehicle: @gastracker.vehicle }
    assert_redirected_to gastracker_path(assigns(:gastracker))
  end

  test "should destroy gastracker" do
    assert_difference('Gastracker.count', -1) do
      delete :destroy, id: @gastracker
    end

    assert_redirected_to gastrackers_path
  end
end
