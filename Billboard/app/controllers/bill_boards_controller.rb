class BillBoardsController < ApplicationController
  def index
    @billboards = BillBoard.all
  end

  def show
    @billboard = BillBoard.find(params[:id])

  end

  def new
    @billboard = BillBoard.new
  end

  def create
    @billboard = BillBoard.new(billboard_params)
    if @billboard.save
      redirect_to bill_boards_path(@billboard)
    else
      render :new
    end
  end


  def edit
    @billboard = BillBoard.find(params[:id])
  end

  def update
    @billboard = BillBoard.find(params[:id])
    if @billboard.update(billboard_params)
      redirect_to bill_boards_path
    else
      render :edit
    end
  end

  def destroy
    @billboard = BillBoard.find(params[:id])
    @billboard.destroy
    redirect_to bill_boards_path
  end

  private
  def billboard_params
    params.require(:bill_board).permit(:song, :artist, :album)
  end

end
