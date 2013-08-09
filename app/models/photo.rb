class Photo < ActiveRecord::Base
  belongs_to :user

  has_many :comments, as: :commentable

  mount_uploader :upload, UploadUploader
end
