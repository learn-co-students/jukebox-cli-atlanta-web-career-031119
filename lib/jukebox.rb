require 'pry'
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

#def say_hello(name)
#  "Hi #{name}!"
#end

#puts "Enter your name:"
#users_name = gets.chomp

#puts say_hello(users_name)

def help
  puts "I accept the following commands:\r\n- help : displays this help message\r\n- list : displays a list of songs you can play\r\n- play : lets you choose a song to play\r\n- exit : exits this program
  "
end

def list(array)
  array.each_with_index {|song, index|
    puts "#{index+1} #{song}"
  }
end

def play(songs)
  response = nil
  puts "Please enter a song name or number:"
  user_input = gets.chomp
    songs.each_with_index {|song, index|
      #Pry.config.output = STDOUT
    #binding.pry
    if user_input.to_i == index+1
      response = "Playing #{song}"
      break
    elsif user_input == song
      response = "Playing #{song}"
      break
    elsif user_input != index+1 || song
      response = "Invalid input, please try again"
      #Pry.config.output = STDOUT
    #binding.pry
    end
  }
  puts response
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  loop do
  puts "Please enter a command:"
        user_input = gets.chomp
        if user_input == "help"
          help()
        elsif user_input == "list"
          list(songs)
        elsif user_input == "play"
          play(songs)
        elsif user_input == "exit"
          exit_jukebox
          break
    end
  end
end
