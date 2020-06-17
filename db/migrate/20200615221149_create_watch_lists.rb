class CreateWatchLists < ActiveRecord::Migration[5.2]
  def change
      create_join_table(:counties, :users, table_name: :watch_lists)
    # create_table :watch_list do |t|
    #   t.integer :county_id
    #   t.integer :user_id
    # end
  end
end