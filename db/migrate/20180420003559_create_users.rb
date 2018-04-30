class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :nickname, null: false
      t.integer :gender, null: false
      t.text :memo, null: false
      t.boolean :admin_flg, null: false
      t.boolean :delete_flg, null: false

      t.timestamps
    end
  end
end
