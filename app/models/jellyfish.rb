class Jellyfish < ApplicationRecord
  mount_uploader :jellyfish_image, JellyfishImageUploader
  has_many :likes, dependent: :destroy
  validates :title, presence: true, length: { maximum: 255 }
  validates :body, presence: true, length: { maximum: 65_535 }
end
