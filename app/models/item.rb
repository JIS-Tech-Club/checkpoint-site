class Item < ActiveRecord::Base
  searchable do
    text :name, :description, :color
  end

end
