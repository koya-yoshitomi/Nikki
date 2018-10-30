require 'test_helper'

class DiaryControllerTest < ActionDispatch::IntegrationTest
  test "should get kaku" do
    get diary_kaku_url
    assert_response :success
  end

  test "should get mokuji" do
    get diary_mokuji_url
    assert_response :success
  end

  test "should get yomu" do
    get diary_yomu_url
    assert_response :success
  end

  test "should get kesu" do
    get diary_kesu_url
    assert_response :success
  end

  test "should get naosu" do
    get diary_naosu_url
    assert_response :success
  end

end
