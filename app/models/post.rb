# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :user
  mount_uploader :video, VideoUploader
  validates :user_id, presence: true
  validates :title, presence: true
  validates :body, presence: true
  validates :video, presence: true
end
