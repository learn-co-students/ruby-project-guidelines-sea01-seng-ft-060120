class SingleWatch < ActiveRecord::Base
    belongs_to :county
    belongs_to :user
end
#     def self.delete_single_watch
#         single_watch = SingleWatch.get_current_watch
#         single_watch.destroy
#         puts "Your Watch List has been deleted."
#     end
# end