class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :title
      t.string :description
      t.string :image
      t.string :release_date
      t.integer :overall_rating

      t.timestamps
    end
  end
end
