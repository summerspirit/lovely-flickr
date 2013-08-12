class Photo < ActiveRecord::Base
  belongs_to :user

  mount_uploader :upload, UploadUploader

  scoped_search on: [:title, :description]
end
