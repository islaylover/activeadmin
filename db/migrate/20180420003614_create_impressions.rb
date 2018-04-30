class CreateImpressions < ActiveRecord::Migration[5.2]
  def change
    create_table :impressions do |t|
      t.references :drink, foreign_key: true, null: false
      t.references :user, foreign_key: true, null: false
      t.references :place, foreign_key: true, null: false
      t.string :title, null: false
      t.string :title_en, null: false
      t.text :impression, null: false
      t.text :impression_en, null: false
      t.boolean :delete_flg, null: false

      t.timestamps
    end
    add_index  :impressions, [:user_id, :place_id, :drink_id], unique: true #ユニークキー追加
  end
end
