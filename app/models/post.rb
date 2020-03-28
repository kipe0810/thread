class Post < ApplicationRecord

	belongs_to :user
	has_many :post_comments, dependent: :destroy

	has_many :relations
	has_many :categories, through: :relations
end
