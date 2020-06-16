class CreateWatches < ActiveRecord::Migration[5.2]
  def change
      # create_join_table(:counties, :users, table_name: :watch_list)
    create_table :watch_list do |t|
      t.string :counties
      t.string :users
    end
  end
end