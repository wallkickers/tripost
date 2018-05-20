class Long < Category
  has_many :triposts, foreign_key: :long_id
end
