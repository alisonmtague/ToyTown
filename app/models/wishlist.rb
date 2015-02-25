class Wishlist < ActiveRecord::Base
	validates :title, uniqueness: true
	has_many :items
end