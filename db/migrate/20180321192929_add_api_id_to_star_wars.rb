class AddApiIdToStarWars < ActiveRecord::Migration[5.1]
  def change
    add_column :star_wars, :api, :int
  end
end
