class AddPlatformToGame < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :platform, :string
  end
end
