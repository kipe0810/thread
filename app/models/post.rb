class Post < ApplicationRecord

	belongs_to :user
	has_many :post_comments, dependent: :destroy

	has_many :relations
	has_many :categories, through: :relations

	def self.search(search)
		if search
			Post.where(['title LIKE ?', "%#{search}%"])
		else
			Post.all
		end
	end
end
