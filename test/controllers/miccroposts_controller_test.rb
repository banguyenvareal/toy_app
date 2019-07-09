require 'test_helper'

class MiccropostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @miccropost = miccroposts(:one)
  end

  test "should get index" do
    get miccroposts_url
    assert_response :success
  end

  test "should get new" do
    get new_miccropost_url
    assert_response :success
  end

  test "should create miccropost" do
    assert_difference('Miccropost.count') do
      post miccroposts_url, params: { miccropost: { content: @miccropost.content, user_id: @miccropost.user_id } }
    end

    assert_redirected_to miccropost_url(Miccropost.last)
  end

  test "should show miccropost" do
    get miccropost_url(@miccropost)
    assert_response :success
  end

  test "should get edit" do
    get edit_miccropost_url(@miccropost)
    assert_response :success
  end

  test "should update miccropost" do
    patch miccropost_url(@miccropost), params: { miccropost: { content: @miccropost.content, user_id: @miccropost.user_id } }
    assert_redirected_to miccropost_url(@miccropost)
  end

  test "should destroy miccropost" do
    assert_difference('Miccropost.count', -1) do
      delete miccropost_url(@miccropost)
    end

    assert_redirected_to miccroposts_url
  end
end
