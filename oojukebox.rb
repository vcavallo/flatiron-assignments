require 'pry'

class Jukebox

  def initialize(songs)
    @songs = songs
    @command = ""
  end

  def play
    puts "make a selection (song name) or type 'list' again:"
    @choice = gets.chomp.downcase
    puts "--> Now Playing: #{@songs.select {|song| song.downcase.include?(@choice)}}"
    if @choice == "list"
      list
    end
  end

  def list
    puts "- - - - - - - - - - - -"
    puts @songs
    puts "- - - - - - - - - - - -"
    if @choice == "list"
      play
    end
  end

  def help
    puts "- - - - - - - - - - - -"
    puts "type:" 
    puts "'list' - see a list of songs"
    puts "'play' - put a song on"
    puts "'exit' - exit the program"
    puts "'help' - see this menu again"
    puts "- - - - - - - - - - - -"
  end

  def do_command(cmd)
    case cmd
    when "list"
      list
    when "play"
      play
    when "help"
      help
    when "exit"
      puts "Goodbye!"
    else 
      puts "I didn't understand that. Try again or type 'help'."
    end
  end

  def call
    cmd = @command
    while cmd!= "exit"
      puts "enter a command."
      puts "for a list of commands, type 'help'."
      puts "to get out of here, type 'exit'."
      cmd = gets.chomp.downcase
        do_command(cmd)
    end
  end

end

songs = [
  "Melvins - Gluey Porch Treatments",
  "Charles Mingus - Goodbye, Porkpie Hat",
  "Slayer - Angel of Death",
  "Raffi - Baby Beluga"
  ]

j = Jukebox.new(songs)
j.call
