require "application_system_test_case"

class MiccropostsTest < ApplicationSystemTestCase
  setup do
    @miccropost = miccroposts(:one)
  end

  test "visiting the index" do
    visit miccroposts_url
    assert_selector "h1", text: "Miccroposts"
  end

  test "creating a Miccropost" do
    visit miccroposts_url
    click_on "New Miccropost"

    fill_in "Content", with: @miccropost.content
    fill_in "User", with: @miccropost.user_id
    click_on "Create Miccropost"

    assert_text "Miccropost was successfully created"
    click_on "Back"
  end

  test "updating a Miccropost" do
    visit miccroposts_url
    click_on "Edit", match: :first

    fill_in "Content", with: @miccropost.content
    fill_in "User", with: @miccropost.user_id
    click_on "Update Miccropost"

    assert_text "Miccropost was successfully updated"
    click_on "Back"
  end

  test "destroying a Miccropost" do
    visit miccroposts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Miccropost was successfully destroyed"
  end
end
