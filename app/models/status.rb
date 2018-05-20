class Status < Category
  has_many :triposts, foreign_key: :status_id
end
