class CreateWatches < ActiveRecord::Migration[5.2]
  def change
    create_join_table :counties, :users, table_name: :watches
  end
end
