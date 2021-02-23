class Micropost < ApplicationRecord
  belongs_to :user
  has_many :favorites, foreign_key: "favorite_id", dependent: :destroy

  validates :content, presence: true, length: { maximum: 255 }
end