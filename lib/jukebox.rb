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

def help
  puts "I accept the following commands:\n-help : displays this help message\n- list ; displays a list of songs you can play\n- play : lets you choose a song to play\n- exit : exits the program"
end

def list(songs_array)
  songs_array.each_with_index {|song,i| puts "#{i + 1}." + song}
end

def play(songs_array)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  if songs_array.include?(user_input)
    puts "Playing" + user_input
  elsif user_input.to_i.between?(1,songs_array.length)
    puts "Playing" + songs_array[user_input.to_i - 1]
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  loop do
    puts "Please enter a command:"
    command = gets.strip
    if command == "help"
      help
    elsif command == "list"
      list(songs)
    elsif command == "play"
      play(songs)
    elsif command == "exit"
      exit_jukebox
      break
    end
  end
        
end
