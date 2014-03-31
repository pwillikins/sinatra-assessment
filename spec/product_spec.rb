require 'spec_helper'
require 'capybara/rspec'
require_relative '../app'

Capybara.app = App

feature "manage products" do
  scenario "user visits homepage" do

    visit('/')
    expect(page).to have_title("Welcome")

    click_on("Add a Product")

  end
end