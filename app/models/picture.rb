class Picture < ApplicationRecord
  belongs_to :impression
  mount_uploader :image, ImageUploader
end
