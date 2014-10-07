class CreateRumours < ActiveRecord::Migration
  def change
    create_table :rumours do |t|
      t.string :description

      t.timestamps
    end
  end
end
