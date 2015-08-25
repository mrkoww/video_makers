class Attachment < ActiveRecord::Base
  validates :file, presence: true

  mount_uploader :file, VideoUploader
end
