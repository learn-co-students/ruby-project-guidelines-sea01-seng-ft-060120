class CLI  
 attr_accessor :user

 def main_menu
    puts "Welcome to COVID-19 Phase Tracker! Please enter your existing user name or enter your desired user name to create a new profile."
        person = gets.chomp
        @user = User.find_by(user_name: person)
        if @user
            puts "Thank you, #{user.user_name}!  Welcome back."
        else
            @user = User.create(user_name: person)
            puts "Profile created. Welcome, #{user.user_name}."
        end
            
        prompt1 = TTY::Prompt.new
        prompt1.select("What would you like to do?", cycle: true, echo: false) do |menu|
            menu.choice "Create watch list.", -> {create_watch_list}
            menu.choice "Show current watch list.", -> {show_current_watch_list}
            menu.choice "Add county to watch list.", -> {add_county}
            menu.choice "Remove county from watch list.", -> {remove_county}
            menu.choice "Delete current watch list.", -> {delete_watch_list}
        end
 end

        # @watch_list = self.where(user_name.id == current_user.id)
        
 def create_watch_list
    prompt2 = TTY::Prompt.new
    prompt2.multi_select("To add counties to your Watch List, press Spacebar on the name of the county and Enter when finished selecting.", cycle: true) do |menu|
        menu.choice "King County"
        menu.choice "Pierce County"
        menu.choice "Snohomish County"
        menu.choice "Island County"
        menu.choice "Kitsap County"
    end
    puts "Watch List created. Selected counties added to your Watch List."
    #how do you call the choice selection made in the previous prompt?#
    do prompt1
        end

 end

 def show_current_watch_list
 end

 def add_county
 end

 def remove_county
 end

 def delete_watch_list
 end

end

#  def show_current_watch_list
#         current_user = @user
#         @watch_list = Watchlist.where(current_user.id == user_name.id)
#         puts @watch_list
        # @county = County.find_by(name: selected_county)
        # puts "#{@county.name} is in #{@county.phase.name}, which means: \n#{@county.phase.description}."
#  end
    
#how to start a new line in a put statement >> \n
#how to make multiple words into a single choice in TTY without having to \ escape every space between words

## next step is adding some watch_lists to seeds or into CLI app, making sure that @user.counties returns correct data and is visible
