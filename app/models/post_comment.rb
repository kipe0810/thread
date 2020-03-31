class PostComment < ApplicationRecord

	validates :comment, presence: true
	validates :name, presence: true, length: {maximum: 20, minimum:2}

	belongs_to :user
	belongs_to :post
end
