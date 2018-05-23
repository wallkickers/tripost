class Tripost < ApplicationRecord
  belongs_to :user ,dependent: :destroy
  has_many :information
  belongs_to :theme
  belongs_to :destination
  belongs_to :long
  belongs_to :money
  belongs_to :status
  
  validates :user_id, presence: true
  validates :title, presence: true, length: { maximum: 50 }
  
end
