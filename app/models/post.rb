class Post < ApplicationRecord

	belongs_to :user
	has_many :post_comments, dependent: :destroy

	has_many :relations
	has_many :categories, through: :relations

	def self.search(search)
		if search.present?
			return Post.where(['title LIKE ?', "%#{search}%"]) + Post.joins(:post_comments).where(['post_comments.comment LIKE ?', "%#{search}%"]).distinct
		else
			Post.all
		end
	end
end
