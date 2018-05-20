class Information < ApplicationRecord
  belongs_to :tripost
  
  validates :time, presence: true
  validates :place, presence: true,length: {maximum: 50}
end
