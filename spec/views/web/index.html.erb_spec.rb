require 'rails_helper'

RSpec.describe 'web/index.html.erb', type: :view do
  it 'Home page' do
    @posts = Post.order('created_at DESC').paginate(page: params[:page], per_page: 5)
    render
    expect(rendered).to match(//)
  end
end
