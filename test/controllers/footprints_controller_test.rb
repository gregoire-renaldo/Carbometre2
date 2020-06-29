require 'test_helper'

class FootprintsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get footprints_index_url
    assert_response :success
  end

  test "should get show" do
    get footprints_show_url
    assert_response :success
  end

  test "should get new" do
    get footprints_new_url
    assert_response :success
  end

  test "should get create" do
    get footprints_create_url
    assert_response :success
  end

  test "should get edit" do
    get footprints_edit_url
    assert_response :success
  end

  test "should get update" do
    get footprints_update_url
    assert_response :success
  end

  test "should get destroy" do
    get footprints_destroy_url
    assert_response :success
  end

end
