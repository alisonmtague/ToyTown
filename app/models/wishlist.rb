class Wishlist < ActiveRecord::Base
	validates :title, uniqueness: true
end