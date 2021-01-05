class Comment < ApplicationRecord
  def info_comment
    "#{user_id} #{comment}"
  end

  belongs_to :post
  belongs_to :user
end
