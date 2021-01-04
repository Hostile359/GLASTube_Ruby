class Comment < ApplicationRecord
  def info_comment
    "#{username} #{comment}"
  end

  belongs_to :post
  belongs_to :user
end
