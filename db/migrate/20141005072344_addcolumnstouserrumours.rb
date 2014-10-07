class Addcolumnstouserrumours < ActiveRecord::Migration
  def change
    add_column :user_rumours, :user_id, :integer
    add_column :user_rumours, :rumour_id, :integer

  end
end
