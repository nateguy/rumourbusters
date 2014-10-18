class Addnullvaluestorumours < ActiveRecord::Migration
  def change

    change_column :rumours, :witnessed, :boolean, null: true
    change_column :rumours, :witness_id, :integer, null: true
    change_column :rumours, :longitude, :float, null: true
    change_column :rumours, :latitude, :float, null: true
  end
end
