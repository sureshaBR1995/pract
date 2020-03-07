require "application_system_test_case"

class LocksTest < ApplicationSystemTestCase
  setup do
    @lock = locks(:one)
  end

  test "visiting the index" do
    visit locks_url
    assert_selector "h1", text: "Locks"
  end

  test "creating a Lock" do
    visit locks_url
    click_on "New Lock"

    fill_in "Model", with: @lock.model
    fill_in "Name", with: @lock.name
    fill_in "Price", with: @lock.price
    click_on "Create Lock"

    assert_text "Lock was successfully created"
    click_on "Back"
  end

  test "updating a Lock" do
    visit locks_url
    click_on "Edit", match: :first

    fill_in "Model", with: @lock.model
    fill_in "Name", with: @lock.name
    fill_in "Price", with: @lock.price
    click_on "Update Lock"

    assert_text "Lock was successfully updated"
    click_on "Back"
  end

  test "destroying a Lock" do
    visit locks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lock was successfully destroyed"
  end
end
