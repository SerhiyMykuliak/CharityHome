class PhotoGallery < ApplicationRecord
  has_one_attached :photo
end
