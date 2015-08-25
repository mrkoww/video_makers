class Comment < ActiveRecord::Base
  belongs_to :user

  validates :body, :user_id, :video_id, presence: true
  validates :body, length: { in: 3..50 }
end
