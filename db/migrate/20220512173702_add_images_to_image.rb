class AddImagesToImage < ActiveRecord::Migration[7.0]
  def change
    add_column :images, :image_3, :string
    add_column :images, :image_4, :string
    add_column :images, :image_5, :string
    add_column :images, :image_6, :string
  end
end
