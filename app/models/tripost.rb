class Tripost < ApplicationRecord
  belongs_to :user
  has_many :information , dependent: :destroy
  
  validates :user_id, presence: true
  validates :title, presence: true, length: { maximum: 50 }
  
end
