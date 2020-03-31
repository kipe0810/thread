class Category < ApplicationRecord

	validates :name, presence: true, length: {maximum: 10}

	has_many :relations
	has_many :posts, through: :relations
end
