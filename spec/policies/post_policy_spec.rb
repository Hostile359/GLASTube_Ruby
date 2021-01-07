require 'rails_helper'
require 'support/factory_bot'

RSpec.describe PostPolicy, type: :policy do
  subject(:new_user) { described_class }

  let(:user) { create :user, email: 'alex@gmail.com', password: '$123asd123$' }

  permissions :new? do
    context 'when user is authorized' do
      it 'access if user present' do
        expect(new_user).to permit(user)
      end
    end

    context 'when user is visitor' do
      let(:user) { nil }

      it { is_expected.not_to permit(user) }
    end
  end
end
