require 'rails_helper'

RSpec.describe WebController, type: :controller do
  describe ' GET /' do
    it 'returns http success to home page' do
      get 'index'
      expect(response).to have_http_status(:success)
    end
  end
end
