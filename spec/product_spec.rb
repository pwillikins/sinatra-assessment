require 'spec_helper'
require 'capybara/rspec'
require_relative '../app'

Capybara.app = App

feature "manage products" do
  scenario "user visits homepage" do

    visit('/')
    expect(page).to have_title("Welcome")

    click_on("Add a Product")
    fill_in "new_product", with: "snowboard"
    click_on("Create Product")

  end
end