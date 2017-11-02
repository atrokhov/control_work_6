require 'test_helper'

class Picture1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @picture1 = picture1s(:one)
  end

  test "should get index" do
    get picture1s_url
    assert_response :success
  end

  test "should get new" do
    get new_picture1_url
    assert_response :success
  end

  test "should create picture1" do
    assert_difference('Picture1.count') do
      post picture1s_url, params: { picture1: { score_id: @picture1.score_id, title: @picture1.title, user_id: @picture1.user_id } }
    end

    assert_redirected_to picture1_url(Picture1.last)
  end

  test "should show picture1" do
    get picture1_url(@picture1)
    assert_response :success
  end

  test "should get edit" do
    get edit_picture1_url(@picture1)
    assert_response :success
  end

  test "should update picture1" do
    patch picture1_url(@picture1), params: { picture1: { score_id: @picture1.score_id, title: @picture1.title, user_id: @picture1.user_id } }
    assert_redirected_to picture1_url(@picture1)
  end

  test "should destroy picture1" do
    assert_difference('Picture1.count', -1) do
      delete picture1_url(@picture1)
    end

    assert_redirected_to picture1s_url
  end
end
