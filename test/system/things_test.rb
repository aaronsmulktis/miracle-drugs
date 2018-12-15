require "application_system_test_case"

class ThingsTest < ApplicationSystemTestCase
  setup do
    @thing = things(:one)
  end

  test "visiting the index" do
    visit things_url
    assert_selector "h1", text: "Things"
  end

  test "creating a Thing" do
    visit things_url
    click_on "New Thing"

    fill_in "Available at", with: @thing.available_at
    fill_in "Content", with: @thing.content
    fill_in "Created at", with: @thing.created_at
    fill_in "Description", with: @thing.description
    fill_in "Discount", with: @thing.discount
    fill_in "Is available", with: @thing.is_available
    fill_in "Keywords", with: @thing.keywords
    fill_in "Likes", with: @thing.likes
    fill_in "Price", with: @thing.price
    fill_in "Slug", with: @thing.slug
    fill_in "Title", with: @thing.title
    fill_in "Uri", with: @thing.uri
    click_on "Create Thing"

    assert_text "Thing was successfully created"
    click_on "Back"
  end

  test "updating a Thing" do
    visit things_url
    click_on "Edit", match: :first

    fill_in "Available at", with: @thing.available_at
    fill_in "Content", with: @thing.content
    fill_in "Created at", with: @thing.created_at
    fill_in "Description", with: @thing.description
    fill_in "Discount", with: @thing.discount
    fill_in "Is available", with: @thing.is_available
    fill_in "Keywords", with: @thing.keywords
    fill_in "Likes", with: @thing.likes
    fill_in "Price", with: @thing.price
    fill_in "Slug", with: @thing.slug
    fill_in "Title", with: @thing.title
    fill_in "Uri", with: @thing.uri
    click_on "Update Thing"

    assert_text "Thing was successfully updated"
    click_on "Back"
  end

  test "destroying a Thing" do
    visit things_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Thing was successfully destroyed"
  end
end
