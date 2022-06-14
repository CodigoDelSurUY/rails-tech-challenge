class Author < ApplicationRecord
  validates :name, presence: true

  has_many :posts
	has_many :favorites
	has_many :favorite_posts, through: :favorites, source: :post do
		def from_someone_else
			where(author: self)
		end
	end
end
