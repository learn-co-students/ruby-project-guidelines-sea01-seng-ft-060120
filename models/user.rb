class User < ActiveRecord::Base
    #really should be has_one logically since each user can have only one watch list, but for safety, has_many
    has_many :watch
    has_many :counties, through: :watch
end