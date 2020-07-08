class Micropost < ApplicationRecord
  belongs_to :user
  has_many :favorites
  has_many :favoritings, through: :reverses_of_favorites, source: :users_id


  validates :content, presence: true, length: { maximum: 255 }
end
