class Addlatlngtorumours < ActiveRecord::Migration
  def change
    add_column :rumours, :latitude, :float
    add_column :rumours, :longitude, :float

  end
end
