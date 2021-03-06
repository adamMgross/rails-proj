class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :name
      t.references :imageable, polymorephic: true, index: true
      t.timestamps null: false
    end
  end
end
