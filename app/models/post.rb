class Post < ApplicationRecord
  has_one_attached :post_picture
  has_rich_text :content

end
