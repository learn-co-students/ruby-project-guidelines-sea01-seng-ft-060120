class CreateCounties < ActiveRecord::Migration[5.2]
  def change
    create_table :counties do |t|
      t.string :county_name
      t.integer :phase_id
    end
  end
end