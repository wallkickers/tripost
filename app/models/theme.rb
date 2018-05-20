class Theme < Category
  has_many :triposts, foreign_key: :theme_id
end
