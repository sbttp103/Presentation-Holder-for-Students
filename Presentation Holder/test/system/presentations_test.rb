require "application_system_test_case"

class PresentationsTest < ApplicationSystemTestCase
  setup do
    @presentation = presentations(:one)
  end

  test "visiting the index" do
    visit presentations_url
    assert_selector "h1", text: "Presentations"
  end

  test "creating a Presentation" do
    visit presentations_url
    click_on "New Presentation"

    fill_in "Author", with: @presentation.author
    fill_in "Grade", with: @presentation.grade
    fill_in "Title", with: @presentation.title
    click_on "Create Presentation"

    assert_text "Presentation was successfully created"
    click_on "Back"
  end

  test "updating a Presentation" do
    visit presentations_url
    click_on "Edit", match: :first

    fill_in "Author", with: @presentation.author
    fill_in "Grade", with: @presentation.grade
    fill_in "Title", with: @presentation.title
    click_on "Update Presentation"

    assert_text "Presentation was successfully updated"
    click_on "Back"
  end

  test "destroying a Presentation" do
    visit presentations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Presentation was successfully destroyed"
  end
end
