class ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Event was successfully created.' }
      else
        render :js, "alert('could not be saved');"
      end
    end
  end

  def edit
  end

  def update
  end

  def index
    @items = Item.all
  end

  def destroy
    @item = Item.destroy
  end
  def show
    @item = Item.find(params[:id])
  end
  def parents_home
    @items = Item.all
  end
  def students_home
    @items = Item.all
  end
  private
  def item_params
    params.require(:item).permit(:name, :description, :color)
  end
end
