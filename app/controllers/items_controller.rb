class ItemsController < ApplicationController

  before_action :set_item, only: [ :show, :edit, :update, :destroy ]
  before_action :clean_url, only: [ :index]

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

# user click on all items

    if  @list_items = "all"

    if params[:query].present?
      @items =  Item.where("item_code LIKE '#{params[:query]}%'" )
    else
      @items = Item.order(:item_code).first(15)
    end

    end

# user click on completed

    if  @list_items = "completed"

      if params[:query].present?
      @items =  Item.where("item_code LIKE '#{params[:query]}%'" )
      else
      @items = Item.order(:item_code).first(5)
      end

    end

    # user click on completed

    if  @list_items = "incomplete"

      if params[:query].present?
      @items =  Item.where("item_code LIKE '#{params[:query]}%'" )
      else
      @items = Item.order(:item_code).first(10)
      end

    end

end



  def show
  end

  def set_item
      @item = Item.find(params[:id])
    end

    def clean_url
      @list_items = request.original_url.last(request.original_url.size - request.original_url.index("?") - 1)
    end

    def item_params
      params.require(:item).permit(:description, :extra_description, :lenght, :width, :height, :weight, :stocking, :picking)
    end
end
