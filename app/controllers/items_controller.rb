class ItemsController < ApplicationController
  def new
    Item.update_values
    @item = Item.new
    @items = Item.all
  end

  def create
    @item = Item.new params[:item]
    if @item.save
      redirect_to new_item_path
    else
      @items = Item.all
      render :new
    end
  end
end
