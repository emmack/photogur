class PicturesController < ApplicationController

	def index 
		@pictures = Picture.order(created_at: :desc)
	end

	def new
		@picture = Picture.new
	end

	def create
		@picture = Picture.new(picture_params)
		if @picture.save
			redirect_to pictures_url
		else
			render :new
		end
	end

	def show 
		@picture = Picture.find(params[:id].to_i)
		@comment = Comment.new(picture_id: @picture.id)

	end

	def update
		@picture = Picture.find(params[:id].to_i)
		if @picture.update_attributes(picture_params)
			redirect_to "/pictures/#{@picture.id}"
		else
			render :edit
		end
	end

	def destroy
		@picture = Picture.find(params[:id])
		@picture.destroy
		redirect_to pictures_url
	end

	def edit
		@picture = Picture.find(params[:id].to_i)
	end



	private
	def picture_params
		params.require(:picture).permit(:artist, :title, :image, :url)
	end
end
