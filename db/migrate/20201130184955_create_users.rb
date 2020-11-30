class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :platform
      t.boolean :top_review
      t.string :avatar

      t.timestamps
    end
  end
end
