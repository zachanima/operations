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

  def sort
  params[:item].each_with_index do |id, index|
    Item.update_all(['position = ?', index + 1], ['id = ?', id])
  end
  render :nothing => true
  end
end
