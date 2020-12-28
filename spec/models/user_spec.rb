require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validation tests' do
    it 'create user' do
      user = described_class.new(email: 'alex@mail.ru')
      expect(user.valid?).to eq(false)
    end

    it 'save user' do
      user = described_class.new(email: 'alex@mail.ru')
      expect(user.save).to eq(false)
    end

    it 'delete user' do
      user = described_class.new(email: 'alex@mail.ru')
      expect(user.delete).to eq(user)
    end
  end
end
