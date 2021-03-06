require 'rails_helper'

RSpec.describe 'Account tests', type: :feature do
  describe 'User registration' do
    it 'registration' do
      visit '/users/sign_up'
      fill_in 'user_email', with: 'alex@gmail.com'
      fill_in 'user_login', with: 'Alex'
      click_button 'commit'
      expect(page).to have_current_path('/users')
    end
  end

  describe 'User authorization' do
    it 'authorization' do
      visit '/users/sign_in'
      fill_in 'user_email', with: 'alex@gmail.com'
      fill_in 'user_password', with: 'qwerty123'
      click_button 'commit'
      expect(page).to have_current_path('/users/sign_in')
    end
  end

  describe 'User settings' do
    it 'settings' do
      visit '/users/edit'
      click_button 'commit'
      expect(page).to have_current_path('/users/sign_in')
    end
  end
end
