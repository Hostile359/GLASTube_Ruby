require 'rails_helper'
require 'support/factory_bot'
require 'support/login_helper'

RSpec.describe 'Account tests', type: :feature do
  describe 'Add post' do
    before do
      create(:user, email: 'bob@mail.ru', password: 'qweqweqwe')
      login('bob@mail.ru', 'qweqweqwe')
    end

    it 'registration' do
      visit '/posts/new'
      fill_in 'post_title', with: 'Dark Souls'
      fill_in 'post_body', with: 'My gaid'
      click_button 'commit'
      expect(page).to have_current_path('/posts')
    end
  end
end
