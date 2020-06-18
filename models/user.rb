class User < ActiveRecord::Base
    has_many :single_watches
    has_many :counties, through: :single_watches

    def self.get_user_name
        prompt = TTY::Prompt.new
        initial_user_entry = prompt.ask("Welcome to COVID-19 WA Phase Tracker! Please enter your existing user name or enter your desired user name to create a new profile:", required: true)
        local_user = self.find_by(user_name: initial_user_entry)
            if local_user
                puts "Welcome back, #{local_user.user_name}!"
            else
                local_user = self.create(user_name: initial_user_entry)
                puts "Profile created. Welcome, #{local_user.user_name}!"
            end
        local_user
    end

end