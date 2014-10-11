class CreateUserRumours < ActiveRecord::Migration
  def change
    create_table :user_rumours do |t|
      t.boolean :credible
      t.integer :user_id
      t.integer :rumour_id
      t.timestamps
    end
  end
end
