class Addwitnessedtorumours < ActiveRecord::Migration
  def change
    add_column :rumours, :witnessed, :boolean
  end
end
