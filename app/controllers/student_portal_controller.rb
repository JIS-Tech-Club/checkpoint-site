class StudentPortalController < ApplicationController
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

  def new
  end

  def search
    @item = Item.new
  end

  def show

  end
end
