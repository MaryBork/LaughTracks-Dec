class CreateSpecials < ActiveRecord::Migration[5.2]
  def change
    create_table :specials do |t|
      t.string :title
      t.integer :length
      t.string :image

      t.timestamps null: false
    end

  end
end
