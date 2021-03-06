class User < ActiveRecord::Base
	def self.find_or_create_from_auth_hash(auth_hash)
		#Look up the user or create them
		user = where(provider: auth_hash.provider, uid: auth_hash.uid).first_or_create
		user.update(
			name: auth_hash.info.name
			)
		user
	end

	def twitter
		@client ||= Twitter::REST::Client.new do |config|
		  config.consumer_key        = Rails.application.secrets.twitter_api_key
		  config.consumer_secret     = Rails.application.secrets.twitter_api_secret
		  config.access_token        = token
		  config.access_token_secret = secret
		end
	end
	has_many :wishlists

end