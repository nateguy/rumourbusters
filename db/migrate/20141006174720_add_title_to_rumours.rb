class AddTitleToRumours < ActiveRecord::Migration
  def change
    add_column :rumours, :title, :string
  end
end
