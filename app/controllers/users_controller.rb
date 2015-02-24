class UsersController < ApplicationController

	def index
		if current_user
			@user = current_user
		end
	end

	def new
	end

	def show
	end
end