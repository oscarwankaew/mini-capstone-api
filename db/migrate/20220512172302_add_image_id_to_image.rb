class AddImageIdToImage < ActiveRecord::Migration[7.0]
  def change
    add_column :images, :image_id, :string
  end
end
