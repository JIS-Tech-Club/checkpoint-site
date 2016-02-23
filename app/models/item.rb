class Item < ActiveRecord::Base
  searchable do
    text :name, :description

  end

end
