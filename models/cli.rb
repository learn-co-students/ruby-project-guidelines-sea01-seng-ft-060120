class CLI  
 attr_accessor :user

 def main_menu
    puts "Welcome to COVID-19 Phase Tracker! Please enter your existing user name or enter your desired user name to create a new profile."
        person = gets.chomp
        @user = User.find_by(user_name: person)
        if @user
            puts "Thank you, #{user.user_name}!  Welcome back."
            #######
        else 
            @user = User.create(user_name: person)
            puts "Welcome, #{user.user_name}."
            puts "To see what Phase a county is in, please enter a Washington state county from the following: King, Pierce, Snohomish, Island, Kitsap."
            ##tty could be used here later
            selected_county = gets.chomp
            @county = County.find_by(name: selected_county)
            @phase = Phase.find_by(name: "Phase 1")
            #where @county.phase_id = 
            puts "#{@county.name} is in #{@phase.name}, which means #{@phase.description}."
        end
    end
end

    
# king   = County.create(name: "King", phase_id: phasemodified1.id)


#     else
#        puts "User name not found. Please enter a user name to create your profile."
#     end

#questions
##how to store a current user
##how to associate county to phase when phase_id is only part of county (not explicitly in phase)