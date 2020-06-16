class Watch < ActiveRecord::Base
    belongs_to :counties 
    belongs_to :users
end