class ItemsController < ApplicationController

  before_action :set_item, only: [ :show, :edit, :update, :destroy ]


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

  def set_item
      @item = Item.find(params[:id])
    end

    def item_params
      params.require(:item).permit(:description, :extra_description, :lenght, :width, :height, :weight, :stocking, :picking)
    end
end
