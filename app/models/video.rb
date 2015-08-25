class Video < ActiveRecord::Base
  # Setup accessible attributes
  # attr_accessible :user_id, :name, :description, :file

  # Validations
  validates :name, :description, :file, presence: true
  validates :name, length: { in: 5..50 }
  validates :description, length:  { in: 15..250 }

  # Associations
  has_many :comments
  belongs_to :user

  # Uploader
  mount_uploader :file, VideoUploader
end
