class CommentsController < ApplicationController
	def create
		# binding.pry
		@comment = Comment.new(comment_params)
		if @comment.save
			redirect_to picture_path(@comment.picture) 
		else
			render :new
		end
	end

	

	private
	def comment_params
		params.require(:comment).permit(:comments, :picture_id)
	end
end
