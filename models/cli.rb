class CLI  
 attr_accessor :user

 def main_menu
    puts "Welcome to COVID-19 Phase Tracker! Please enter your existing user name or enter your desired user name to create a new profile."
        person = gets.chomp
        @user = User.find_by(user_name: person)
        if @user
            puts "Thank you, #{user.user_name}!  Welcome back."
            prompt = TTY::Prompt.new
            prompt.select("What would you like to do? Use vertical arrow keys to navigate, then press Enter to select.", %w(Show\ current\ watch\ list Add\ county\ to\ watch\ list Remove\ county\ from\ watch\ list Delete\ current\ watch\ list))
            
                
            #tty - show current watch list /  add county to watch list /  remove county from watch list / delete current watch list
            #puts current watch list#
        # binding.pry
        else 
            @user = User.create(user_name: person)
            puts "Welcome, #{user.user_name}."
            puts "To see what Phase a county is in, please enter a Washington state county from the following: King, Pierce, Snohomish, Island, Kitsap."
            ##tty could be used here later
            selected_county = gets.chomp
            @county = County.find_by(name: selected_county)
            puts "#{@county.name} is in #{@county.phase.name}, which means: \n#{@county.phase.description}."
            #press something to create a watch list and add this county to it#
        end
    end
end

#how to start a new line in a put statement >> \n
#how to make multiple words into a single choice in TTY without having to \ escape every space between words

## next step is adding some watch_lists to seeds or into CLI app, making sure that @user.counties returns correct data and is visible
