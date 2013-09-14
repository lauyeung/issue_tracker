require 'spec_helper'

feature "User creates an issue", %q{
  As a user
  I want to create an issue
  So that I can track the progress of the issue
} do

  # Acceptance Criteria:
  # * I must provide a title
  # * I must provide description
  # * I can mark the issue as reproducible
  # * I must select a category for the issue
  # * I can categorize an issue as either "Bug", "Feature Request", or "Customer Service"
  # * I can rate the severity of the `Issue` as either "High", "Moderate" or "Low"
  # * I must choose a severity

  context "with valid attributes" do
    it "creates an issue with valid attributes" do
      Category.create(name: "Bug")
      Category.create(name: "Feature Request")
      visit '/issues/new'

      fill_in "Title", with: "Broken link"
      fill_in "Description", with: "The sign in link is broken"
      # Check the checkbox with a label that says 'Is reproducible'
      check "Is reproducible"
      select "Feature Request", from: "Category"
      # We use capybara choose method to choose the radio button w/ label "Moderate"
      choose "Moderate"
      click_on "Create Issue"
      save_and_open_page

      expect(page).to have_content "Issue was successfully created"
    end
  end

  context "with invalid attributes" do
    it "sees errors for invalid attributes" do
      visit '/issues/new'

      click_on "Create Issue"

      expect(page).to have_content "Title can't be blank"
      expect(page).to have_content "Description can't be blank"
    end
  end
end
