# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'web/home_page.html.erb', type: :view do
  it 'renders "Enjoy your watching!"' do
    render
    expect(rendered).to match(/Enjoy your watching!/)
  end
end
