require 'rails_helper'
require 'support/factory_bot'

RSpec.describe Comment, type: :model do
  describe 'validation tests' do
    it 'add comment' do
      comment = build(:comment, user_id: 1, comment: 'Хорошее видео', post_id: 3)
      expect(comment.info_comment).to eq '1 Хорошее видео'
    end

    it 'test set username' do
      comment = build(:comment, user_id: 2)
      comment.user_id = 10
      expect(comment.user_id).to eq 10
    end

    it 'test set comment' do
      comment = build(:comment, comment: 'Tmp')
      comment.comment = 'Hi'
      expect(comment.comment).to eq 'Hi'
    end

    it 'test set post_id' do
      comment = build(:comment, post_id: 3)
      comment.post_id = 330
      expect(comment.post_id).to eq 330
    end
  end
end
