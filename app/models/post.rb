class Post < ApplicationRecord
  has_many :post_tags, dependent: :destroy
  has_many :tags, through: :post_tags

  has_one_attached :post_picture
  has_rich_text :content

  validates :title, presence: true, length: {minimum:5, maximum:30}
  validates :post_picture, attached: true, content_type: ['image/png', 'image/jpeg', 'image/jpg']
  validates :content, presence: true, length: {minimum:100}
  validates :tags, presence: true
end
