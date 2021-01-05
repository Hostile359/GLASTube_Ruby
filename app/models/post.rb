# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one_attached :video
  validates :user_id, presence: true
  validates :title, presence: true
  validates :body, presence: true

  def info_post
    "#{title} #{body} #{user_id}"
  end
end
