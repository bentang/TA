class Admin::ArtissController < ApplicationController

	def index
		@artis = Artis.all
	end

	def show
		@artis = Artis.find_by_id(params[:id])
	end

	def new
		@artis = Artis.new
	end

	def create
		@artis = Artis.new(params[:artis])
	  	if @artis.save
	  		flash[:success] = "Artis has been create"
	  		redirect_to admin_artiss_path
	  	else
	  		render action: "new"
	 	end
	end
		

	def update
		@artis = Artis.find(params[:id])
	  		if @artis.update_attributes(nama_artis: params[:artis][:nama_artis])
	  		flash[:success] = "Artis has been update"
	  		redirect_to admin_artis_path(@artis)
	  		else
	  		redirect_to action: "edit"
	  	end
	end

	def edit
		@artis = Artis.find(params[:id])
	end

	def destroy
		 @artis = Artis.find(params[:id])
		    @artis.destroy
		      flash[:success] = "Artis has been destroy"
		      redirect_to admin_artiss_path
	end
end
