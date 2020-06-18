class CLI  
    attr_accessor :user, :single_watch

    def intro
        @local_user = User.get_user_name
        main_menu
    end

    def main_menu     
        prompt = TTY::Prompt.new
        prompt.select("What would you like to do?", cycle: true, echo: false) do |menu|
            menu.choice "Create county Watch.", -> {create_single_watch}
            menu.choice "Show current county Watches.", -> {show_current_watches}
            menu.choice "Remove county from Watches.", -> {remove_county}
            menu.choice "Delete current county Watch.", -> {delete_single_watch}
        end
    end
        
    def create_single_watch
        prompt = TTY::Prompt.new
        county_watch = prompt.select("To add a county Watch, use ↑/↓ arrows to select the name of the county or letter keys to filter by letter, then Enter.", %w(King Pierce Snohomish Spokane Clark Thurston Kitsap Yakima Whatcome Benton Skagit Cowlitz Grant Franklin Island Lewis Clallam Chelan Grays\ Harbor Mason Walla\ Walla Whitman Kittitas Stevens Douglas Okanogan Jefferson Asotin Klickitat Pacific Adams San\ Juan Pend\ Oreille Skamania Lincoln Ferry Wahkiakum Columbia Garfield), per_page: 40, cycle: true, filter: true)
        local_county = County.find_by(county_name: county_watch)
        previous_county_watch = @local_user.single_watches.select{|single_watch| single_watch.county_id == local_county.id}
        previous_county_watch.length > 0 ? (puts "Watch already exists.") : SingleWatch.create(county_id: local_county.id, user_id: @local_user.id) && (puts "A Watch has been set on the selected county!");
        main_menu
    end

    def show_current_watches
        first_output = @local_user.counties.collect{|county| county.county_name + " County" + ", " + county.phase.phase_name}
        puts first_output
        # prompt = TTY::Prompt.new
        # prompt.ask()
    end

    def remove_county
        prompt = TTY::Prompt.new
        county_watch = prompt.select("To remove a county Watch, use ↑/↓ arrows to select the name of the county or letter keys to filter by letter, then Enter.", %w(King Pierce Snohomish Spokane Clark Thurston Kitsap Yakima Whatcom Benton Skagit Cowlitz Grant Franklin Island Lewis Clallam Chelan Grays\ Harbor Mason Walla\ Walla Whitman Kittitas Stevens Douglas Okanogan Jefferson Asotin Klickitat Pacific Adams San\ Juan Pend\ Oreille Skamania Lincoln Ferry Wahkiakum Columbia Garfield), per_page: 40, cycle: true, filter: true)
        SingleWatch.destroy(county_watch)
        local_county = County.find_by(county_name: county_watch)
    end

    # def delete_single_watch
    #     prompt = TTY::Prompt.new
    #     prompt.select("Are you sure you want to delete your Watch List?", cycle: false, echo: false) do |menu|
    #         menu.choice "Yes", -> {SingleWatch.delete_single_watch}
    #         menu.choice "No", ""
    #     end
    #     puts "...taking you back to safety..."
    #     main_menu
    # end

end

    #  def show_current_watch_list
    #         current_user = @user
    #         @watch_list = Watchlist.where(current_user.id == user_name.id)
    #         puts @watch_list
            # @county = County.find_by(name: selected_county)
            # puts "#{@county.name} is in #{@county.phase.name}, which means: \n#{@county.phase.description}."
    #  end

    ## next step is adding some watch_lists to seeds or into CLI app, making sure that @user.counties returns correct data and is visible