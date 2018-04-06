class ItemsController < ApplicationController
  def new
  end

  def create
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
    @items = Item.first(15)
  end

  def show
  end
end
