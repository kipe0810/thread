class Post < ApplicationRecord

	validates :title, presence: true

	belongs_to :user
	has_many :post_comments, dependent: :destroy

	has_many :relations
	has_many :categories, through: :relations

	def self.search(search)
		if search.present?
			return Post.where(['title LIKE ?', "%#{search}%"]).order(created_at: :desc) + Post.joins(:post_comments).where(['post_comments.comment LIKE ?', "%#{search}%"]).order(created_at: :desc).distinct
		else
			Post.all.order(created_at: :desc)
		end
	end
end
