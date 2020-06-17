class User < ActiveRecord::Base
    has_many :watch_lists
    has_many :counties, through: :watch_lists

    @@watch_listing = []

end

# def self.get_current_user_name

# end