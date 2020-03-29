class PostComment < ApplicationRecord
	belongs_to :user
	belongs_to :post

	def self.search(search)
		if search
			PostComment.where(['comment LIKE ?', "%#{search}%"])
		else
			PostComment.all
		end
	end
end
