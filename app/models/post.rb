class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :image_file
  # accepts_nested_attributes_for :users
end
