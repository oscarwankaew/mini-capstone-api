class ChangeImageIdInImage < ActiveRecord::Migration[7.0]
  def change
    change_column :images, :image_id, :integer, using: "image_id::integer"
    change_column :products, :image_id, :integer, using: "image_id::integer"
  end
end
