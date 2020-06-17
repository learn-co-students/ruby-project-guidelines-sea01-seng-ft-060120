require_relative '../config/environment'

system("clear")

app = CLI.new
app.intro
app.main_menu
app.return_home