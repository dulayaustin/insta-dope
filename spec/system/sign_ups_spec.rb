# frozen_string_literal: true

require "rails_helper"

RSpec.describe "Sign Ups", type: :system do
  context "as a user" do
    it "successfully sign ups" do
      visit new_user_registration_path

      expect(page).to have_current_path "/sign_up"

      fill_in "Email", with: "tester@example.com"
      fill_in "First Name", with: "John"
      fill_in "Last Name", with: "Doe"
      fill_in "Password", with: "password"
      fill_in "Password Confirmation", with: "password"

      click_button "Sign Up"

      expect(page).to have_current_path "/"
      expect(page).to have_css("#flash-container", text: "Welcome! You have signed up successfully.")
      expect(page).to have_button "Log Out"
    end
  end

  context "signing up got errors" do
    it "is invalid when email, first name, last name and password are blank" do
      visit new_user_registration_path

      expect(page).to have_current_path "/sign_up"

      fill_in "Email", with: ""
      fill_in "First Name", with: ""
      fill_in "Last Name", with: ""
      fill_in "Password", with: ""

      click_button "Sign Up"

      expect(page).to have_content "Can't be blank"
    end

    it "is invalid when email has already been taken" do
      FactoryBot.create(
        :user,
        email: "tester@example.com",
      )

      visit new_user_registration_path

      expect(page).to have_current_path "/sign_up"

      fill_in "Email", with: "tester@example.com"

      click_button "Sign Up"

      expect(page).to have_content "Has already been taken"
    end

    it "is invalid when password and password confirmation does not match" do
      visit new_user_registration_path

      expect(page).to have_current_path "/sign_up"

      fill_in "Password", with: "password"
      fill_in "Password Confirmation", with: "password123"

      click_button "Sign Up"

      expect(page).to have_content "Doesn't match password"
    end
  end
end
