class ItemsController < ApplicationController

  before_action :set_item, only: [ :show, :edit, :update, :destroy ]


  def new
  end

  def create
  end

  def update
   @item.update(item_params)
   redirect_to items_path
  end

  def edit
  end

  def destroy
  end

  def index

    if params[:query].present?

      @items =  Item.where("item_code LIKE '#{params[:query]}%'" )

            else
      @items = Item.order(:item_code).first(15)

        end


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
