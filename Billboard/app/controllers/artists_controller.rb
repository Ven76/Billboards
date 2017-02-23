class ArtistsController < ApplicationController
  before_action :billboard, only: [:index, :show, :new, :create]

  def index
    @artists = Artist.all
  end

  def new
    @artist = @billboard.artists.new
  end

  def create
    @artist = @billboard.artists.new(artist_params)
    if @artist.save
      redirect_to bill_board_artist_path(@billboard, @artist)
    else
      render :new
    end
  end

  def edit
    @artist = @billboard.artists.find(params[:id])
  end

  def update
  end


  def show
    @artist = @billboard.artists.find(params[:id])
  end

private

def artist_params
  params.require(:artist).permit(:name, :song, :album, :genre, :bill_board_id)
end

def billboard
  @billboard = BillBoard.find(params[:bill_board_id])
end


end
