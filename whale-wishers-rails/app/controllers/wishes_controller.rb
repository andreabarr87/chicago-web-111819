class WishesController < ApplicationController
  def new
    @wish = Wish.new
    @whales = Whale.all
  end

  def create
    wish = Wish.new(params.require(:wish).permit(:title, :description, :whale_id))
    wish.save
    redirect_to wishes_path
  end

  def index
    @wishes = Wish.all
  end

  def show
    # @wish = Wish.find(params[:id])
    @wish = Wish.find_by(id: params[:id])

    if !@wish
      redirect_to wishes_path and return
    end

  end
end
