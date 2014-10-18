class Addlocationtorumour < ActiveRecord::Migration
  def change
    add_column :rumours, :location, :string
  end
end
