class County < ActiveRecord::Base
    belongs_to :phase
    has_many :watch
    has_many :users, through: :watch
end









#   create_table "counties", force: :cascade do |t|
#     t.string "name"
#     t.integer "phase_id"
#   end