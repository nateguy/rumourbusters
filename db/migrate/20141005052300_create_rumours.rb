class CreateRumours < ActiveRecord::Migration
  def change
    create_table :rumours do |t|
      t.string :description
      t.float :latitude
      t.float :longitude
      t.string :title
      t.timestamps
    end
  end
end
