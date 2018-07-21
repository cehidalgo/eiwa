class Tag < ApplicationRecord
  belongs_to :posts
  # belongs_to :user

  validates :name, presence: true
end
