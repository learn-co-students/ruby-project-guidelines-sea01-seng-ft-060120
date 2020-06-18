class County < ActiveRecord::Base
    belongs_to :phase
    has_many :single_watches
    has_many :users, through: :single_watches
end