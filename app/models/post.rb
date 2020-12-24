# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :user
  mount_uploader :video, VideoUploader
  # validates :title, :body, presence: true
end
