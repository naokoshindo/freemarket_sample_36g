class Image < ApplicationRecord
  belongs_to :item
  mount_uploader :images, ImageUploader
end
