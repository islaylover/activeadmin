class CreateDrinks < ActiveRecord::Migration[5.2]
  def change
    create_table :drinks do |t|
      t.references :classification, foreign_key: true, null: false
      t.string :name, null: false
      t.string :name_kana, null: false
      t.string :name_en, null: false
      t.text :explanation, null: false
      t.text :explanation_en, null: false
      t.string :affiliate_word, null: false

      t.timestamps
    end
  end
end
