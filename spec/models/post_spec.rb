# frozen_string_literal: true

require 'rails_helper'
require 'support/factory_bot'

RSpec.describe Post, type: :model do
  it 'add post' do
    post = build(:post, title: 'video', body: 'video', user_id: 1)
    expect(post.info_post).to eq 'video video 1'
  end

  it 'test set title' do
    post = build(:post, title: 'video')
    post.title = 'video1'
    expect(post.title).to eq 'video1'
  end

  it 'test set body' do
    post = build(:post, body: 'video')
    post.body = 'video1'
    expect(post.body).to eq 'video1'
  end

  it 'test set user_id' do
    post = build(:post, user_id: 1)
    post.user_id = 2
    expect(post.user_id).to eq 2
  end
end
