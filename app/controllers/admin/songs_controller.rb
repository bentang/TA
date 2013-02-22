class Admin::SongsController < ApplicationController
  
    def index
    @song = Song.all
  end  

  def show
    @song = Song.find_by_id(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(params[:song])
    if @song.save
      flash[:success] = "Song has been create"
      redirect_to admin_songs_path
    else
      flash[:error] = "Song was failed to create"
      render_to action: 'new'
    end
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    if @song.update_attributes(params[:song])
      flash[:success] = "Song has been update"
      redirect_to admin_song_path(@song)
    else
      flash[:error] = "Song was failed update"
      render_to action: 'edit'
    end
  end

  def destroy
    @song = Song.find(params[:id])
    if @song.destroy
      flash[:success] = "Song has been delete"
      redirect_to admin_songs_path
    else
        flash[:error] = "Song was failed delete"
        render_to action: 'show'
    end
  end
end

