class RemoveImage1InImages < ActiveRecord::Migration[7.0]
  def change
    remove_column :images, :image_1, :string
    remove_column :images, :image_2, :string
    remove_column :images, :image_3, :string
    remove_column :images, :image_4, :string
    remove_column :images, :image_5, :string
    remove_column :images, :image_6, :string
    remove_column :images, :image_id, :integer
  end
end
