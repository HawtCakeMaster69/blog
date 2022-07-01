class Post < ApplicationRecord
  has_one_attached :cover_picture
  has_rich_text :body
  validates :title, :summary, :body, presence: true
end
