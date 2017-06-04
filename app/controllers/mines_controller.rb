class MinesController < ApplicationController
  def index
    @mines = Mine.all
  end

  def edit
    @mine = Mine.find(params[:id])
  end

  def new
    @mine = Mine.new

    if @mine.save
      redirect_to @mine
    else
      render 'new'
    end
  end

  def destroy
    @mine = Mine.find(params[:id])
    @mine.destroy

    redirect_to mines_path
  end

  def create
    @mine = Mine.new(mine_params)
    @mine.save
    redirect_to @mine
  end

  def update
    @mine = Mine.find(params[:id])

    if @mine.update(mine_params)
      redirect_to @mine
    else
      render 'edit'
    end
  end

  def show
    @mine = Mine.find(params[:id])
  end

  private
  def mine_params
    params.require(:mine).permit(:coin, :miner, :pool, :stratum, :wallet)
  end
end
