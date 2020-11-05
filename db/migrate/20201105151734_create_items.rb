class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.integer :interest_id
      t.string :title
      t.text :description
      t.string :card_image

      t.timestamps
    end
  end
end
