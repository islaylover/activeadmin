class AddImageToPictures < ActiveRecord::Migration[5.2]
  def change
    add_column :pictures, :image, :string
    change_column_null :pictures, :image, false
  end
end
