class StudentPortalController < ApplicationController
  def index
    @items = Item.all
  end

  def new
  end

  def search
    @item = Item.new
  end

  def show

  end
end
