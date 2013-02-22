class Admin::GenresController < ApplicationController
	def index
		@genre = Genre.all
	end

	def show
		@genre = Genre.find_by_id(params[:id])
	end

	def new
		@genre = Genre.new
	end

	def create
		@genre = Genre.new(params[:genre])
	  	if @genre.save
	  		flash[:success] = "Genre has been create"
	  		redirect_to admin_genres_path
	  	else
	  		render action: "new"
	 	end
	end
		

	def update
		@genre = Genre.find(params[:id])
	  		if @genre.update_attributes(name: params[:genre][:name])
	  		flash[:notice] = "Genre has been update"
	  		redirect_to admin_genre_path(@genre)
	  		else
	  		redirect_to action: "edit"
	  	end
	end

	def edit
		@genre = Genre.find(params[:id])
	end

	def destroy
		 @genre = Genre.find(params[:id])
		    @genre.destroy
		      flash[:notice] = "Genre has been destroy"
		      redirect_to admin_genres_path
		end

end
