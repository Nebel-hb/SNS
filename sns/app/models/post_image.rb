class PostImage < ApplicationRecord

  belongs_to :user
  attachment :image
  has_many :post_images, dependent: :destroy
end
