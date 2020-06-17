require_relative '../config/environment'

system("clear")

app = CLI.new
app.main_menu
app.show_current_watch_list