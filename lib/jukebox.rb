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

commands = {
  help=>'displays this help message',
  list=>'displays a list of songs you can play',
  play=>'lets you choose a song to play',
  exit=>'exits the program'
}

# def say_hello(name)
#   "Hi #{name}!"
# end
 
# puts "Enter your name:"
# users_name = gets.chomp
 
# puts say_hello(users_name)

def request_command
  puts "Please Enter a Command:"
end

def help(commands)
  puts "Acceptable commands include the following:"
  commands.each{|k,v| puts "- #{k} : #{v}"}
end

def list(songs)
  songs.each_with_index{|v,i| puts "#{i+1}. #{v}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  resp=gets.chomp
  if songs[resp]
    puts "Playing #{songs[resp]}"
  elsif x=songs.find{|s| s.include?(resp)}
    puts "Playing #{x}"
  else
    puts 'Invalid input, please try again'
    play(songs)
  end
end

def exit_jukebox
  puts 'Goodbye'
end