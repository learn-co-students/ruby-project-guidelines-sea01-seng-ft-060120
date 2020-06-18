class CreateSingleWatches < ActiveRecord::Migration[5.2]
  def change  
    create_table :single_watches do |t|
      t.integer :county_id
      t.integer :user_id
    end
  end
end