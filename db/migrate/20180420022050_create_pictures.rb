class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.references :impression, foreign_key: true, null: false
      t.string :title, null: false
      t.string :title_en, null: false
      t.string :memo
      t.text :memo_en
      t.boolean :delete_flg, null: false, default:false

      t.timestamps
    end
  end
end
