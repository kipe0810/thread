class Category < ApplicationRecord
	has_many :relations
	has_many :posts, through: :relations
end
