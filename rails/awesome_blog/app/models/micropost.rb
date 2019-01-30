class Micropost < ApplicationRecord
  belongs_to :user # one model object

  validates :content, presence: true, length: { maximum: 250 }
  mount_uploader :picture, PictureUploader
end
