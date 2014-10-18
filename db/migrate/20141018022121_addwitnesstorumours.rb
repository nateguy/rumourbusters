class Addwitnesstorumours < ActiveRecord::Migration
  def change
    add_column :rumours, :witness_id, :integer
  end
end
