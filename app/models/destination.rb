class Destination < Category
  has_many :triposts, foreign_key: :destination_id
end
