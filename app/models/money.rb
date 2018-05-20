class Money < Category
  has_many :triposts, foreign_key: :money_id
end
