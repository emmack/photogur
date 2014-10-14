class LikesController < ApplicationController


	def create
		# binding.pry
			@like = Like.new(like_params)
			if @like.save
				redirect_to picture_path(@like.picture) 
			else
				render :new
			end
		end

	
	def count
		@likes =Like.count
	end

	private
	def like_params
		params.require(:like).permit(:like, :picture_id)
	end
end


