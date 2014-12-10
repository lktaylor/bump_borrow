class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new
    @item.name = params[:name]
    @item.category_id = params[:category_id]
    @item.size = params[:size]
    @item.color = params[:color]
    @item.price = params[:price]
    @item.created_at = params[:created_at]
    @item.updated_at = params[:updated_at]


    if @item.save
      redirect_to "/items", :notice => "Item created successfully."
    else
      render 'new'
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])

    @item.name = params[:name]
    @item.category_id = params[:category_id]
    @item.size = params[:size]
    @item.color = params[:color]
    @item.price = params[:price]
    @item.created_at = params[:created_at]
    @item.updated_at = params[:updated_at]


    if @item.save
      redirect_to "/items", :notice => "Item updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @item = Item.find(params[:id])

    @item.destroy

    redirect_to "/items", :notice => "Item deleted."
  end
end
