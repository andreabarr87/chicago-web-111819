class TagsController < ApplicationController
  def new
    @tag = Tag.new
  end

  def create
    Tag.create(params.require(:tag).permit(:name))
    redirect_to tags_path
  end

  def index
    @tags = Tag.all
  end
end
