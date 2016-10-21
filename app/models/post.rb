class Post < ActiveRecord::Base
  validates :title, :image_original_url, :url, :image_width, :image_height, presence: true
  validates :image_original_url, :url, uniqueness: true
end
