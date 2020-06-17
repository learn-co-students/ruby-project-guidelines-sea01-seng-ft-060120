class User < ActiveRecord::Base
    has_many :watch_lists
    has_many :counties, through: :watch_lists
end