class CreatePhysicalProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :physical_products do |t|
      t.string :image1
      t.string :image2
      t.string :image3
      t.belongs_to :product, foreign_key: true

      t.timestamps
    end
  end
end
