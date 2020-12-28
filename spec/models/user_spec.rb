require 'rails_helper'
require 'support/factory_bot'

RSpec.describe User, type: :model do
  describe 'validation tests' do
    it 'add user' do
      user = build(:user, email: 'alex@gmail.com', login: 'Alex')
      expect(user.info_user).to eq 'alex@gmail.com Alex'
    end

    it 'delete user' do
      user = build(:user, email: 'alex@gmail.com', login: 'Alex')
      expect(user.delete).to eq(user)
    end

    it 'set email' do
      user = build(:user, email: 'alex@gmail.com')
      user.email = 'alex1234@gmail.com'
      expect(user.email).to eq 'alex1234@gmail.com'
    end

    it 'set login' do
      user = build(:user, login: 'Korben')
      user.login = 'KorbenDaIlas'
      expect(user.login).to eq 'KorbenDaIlas'
    end

    it 'set encrypted_password' do
      user = build(:user, encrypted_password: '$312312asad13qwe$')
      user.encrypted_password = '$123asd123$'
      expect(user.encrypted_password).to eq '$123asd123$'
    end

    it 'set reset_password_token' do
      user = build(:user, reset_password_token: '$312312asad13qwe$')
      user.reset_password_token = '$123asd123$'
      expect(user.reset_password_token).to eq '$123asd123$'
    end

    it 'set reset_password_sent_at' do
      user = build(:user, reset_password_sent_at: 'Mon, 25 Dec 1999 00:00:00.000000000 UTC +00:00')
      user.reset_password_sent_at = 'Mon, 28 Dec 2020 00:00:00.000000000 UTC +00:00'
      expect(user.reset_password_sent_at).to eq 'Mon, 28 Dec 2020 00:00:00.000000000 UTC +00:00'
    end

    it 'set remember_created_at' do
      user = build(:user, remember_created_at: 'Mon, 25 Dec 1999 00:00:00.000000000 UTC +00:00')
      user.remember_created_at = 'Mon, 28 Dec 2020 00:00:00.000000000 UTC +00:00'
      expect(user.remember_created_at).to eq 'Mon, 28 Dec 2020 00:00:00.000000000 UTC +00:00'
    end
  end
end
