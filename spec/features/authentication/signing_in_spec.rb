require 'rails_helper'

feature 'Signing in' do
  before(:each) do
    Warden.test_reset!
  end
  scenario 'Successful sign in via form' do
    visit '/'
    fill_in 'Email', with: "john.doe@gmail.com"
    fill_in 'Password', with: "1234_password"
    click_button 'Log in'
    expect(page).to have_content('You have reached your destination!')
  end

  scenario 'Unsuccessful sign in via form due to invalid password' do
    visit '/'
    fill_in 'Email', with: "john.doe@gmail.com"
    fill_in 'Password', with: "1233_password"
    click_button 'Log in'
    expect(page).to have_content('Log in')
  end

end

