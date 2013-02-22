class Admin::AlbumsController < ApplicationController

	def index
		@album = Album.all
	end

	def show
		@album = Album.find_by_id(params[:id])
	end

	def new
		@album = Album.new
	end

	def create
		@album = Album.new(params[:album])
		if @album.save
			flash[:success] = "Album has been create"
			redirect_to admin_albums_path
		else
			flash[:error] = 'Album was failed to create'
			render action: "new"
		end
	end

	def edit
		@album = Album.find(params[:id])
	end

	def update
		@album = Album.find(params[:id])
			if @album.update_attributes(params[:album])
				flash[:success] = "Album has been update"
				redirect_to admin_album_path(@album)
			else

			flash[:error] = 'Album was failed to update'
					render action: 'edit'
			end
	end

	def destroy
		@album = Album.find(params[:id])
		if @album.destroy
			flash[:success] = "Album has been delete"
			redirect_to admin_albums_path
		else

				flash[:error] = 'Album was failed to delete'
			redirect_to admin_album_path	
		end
	end
end
