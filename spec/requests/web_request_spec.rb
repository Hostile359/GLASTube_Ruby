require 'rails_helper'

RSpec.describe 'Web', type: :request do
  describe 'GET /' do
    it 'returns http success to home page' do
      get '/'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /users/sign_up' do
    it 'returns http success to sign up page' do
      get '/users/sign_up'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /users/sign_in' do
    it 'returns http success to sign in page' do
      get '/users/sign_in'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /users/edit' do
    it 'returns http success to edit page' do
      get '/users/edit'
      expect(response).to have_http_status(:redirect)
    end
  end
end
