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

# def say_hello(name)
#   "Hi #{name}!"
# end
 
# puts "Enter your name:"
# users_name = gets.chomp
 
# puts say_hello(users_name)

def help
  commands = {
  'help'=>'displays this help message',
  'list'=>'displays a list of songs you can play',
  'play'=>'lets you choose a song to play',
  'exit'=>'exits the program'
  }
  puts "Acceptable commands include the following:"
  commands.each{|k,v| puts "- #{k} : #{v}"}
end

def list(songs)
  songs.each_with_index{|v,i| puts "#{i+1}. #{v}"}
end

def play(songs)
  resp=gets.chomp
  if resp.to_i-1>=0 && songs[resp.to_i-1]
    # binding.pry
    puts songs[resp.to_i-1]
  elsif songs.include?(resp)
    # binding.pry
    puts songs.find{|s| s.include?(resp)}
  else
    puts 'Invalid input, please try again'
  end
end

def exit_jukebox
  puts 'Goodbye'
  return
end

def run(songs)
  help()
  
  puts "Please Enter a Command:"
  input=gets.chomp()
  
  if input=='help'
    help()
  elsif input=='list'
    list(songs)
  elsif input=='play'
    puts "Please enter a song name or number:"
    play(songs)
  elsif input=='exit'
    exit_jukebox()
  else
    run(songs)
  end

end