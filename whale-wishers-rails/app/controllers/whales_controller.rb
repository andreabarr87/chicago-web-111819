class WhalesController < ApplicationController

  def index
    @whales = Whale.all
  end

  def show
    @whale = Whale.find_by(id: params[:id])
  end

  def new
    p flash[:errors]
    @whale = Whale.new
  end

  def create
    respond_to do |format|
      format.html
    end

    whale = Whale.new(params.require(:whale).permit(:name, :size, :species))

    if whale.save
      redirect_to "/whales"
    else
      flash[:errors] = whale.errors.full_messages
      flash[:name] = params[:whale][:name]
      flash[:size] = params[:whale][:size]
      flash[:species] = params[:whale][:species]
      # binding.pry
      redirect_to new_whale_path
    end
  end
end
