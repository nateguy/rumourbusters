class CreateUserRumours < ActiveRecord::Migration
  def change
    create_table :user_rumours do |t|
      t.boolean :credible

      t.timestamps
    end
  end
end
