require 'rails_helper'

RSpec.describe 'Web', type: :request do
  describe 'GET /' do
    it 'returns http success to home page' do
      get '/'
      expect(response).to have_http_status(:success)
    end
  end
end
