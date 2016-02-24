class ParentsPortalController < ApplicationController
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
    @search = Item.search do
      fulltext params[:search]
    end
    if @search.results
      @foundItems = @search.results
    else
      @foundItems = Item.all
    end
  end

  def destroy
    @item = Item.destroy
  end
  def show
    @item = Item.find(params[:id])
  end
  private
  def item_params
    params.require(:item).permit(:name, :description, :color)
  end
end
