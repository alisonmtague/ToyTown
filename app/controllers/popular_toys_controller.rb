class PopularToysController < ApplicationController
  def index
		@popular_toys = PopularToy.all
	end

	def upvote
		@popular_toy = PopularToy.find(params[:id])
		@popular_toy.upvote_by current_user
		redirect_to popular_toys_path
	end

  # def vote
  # 	@popular_toy = PopularToy.find(params[:id])
  # 	@popular_toy.liked_by current_user
  # 	respond_to do |format|
  #   	format.html {redirect_to :back }
  #   format.json { render json: { count: @popular_toy.liked_count } }
  # end
end
