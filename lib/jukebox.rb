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
    puts songs[resp.to_i-1]
  elsif songs.include?(resp)
    puts songs.find{|s| s.include?(resp)}
  else
    puts 'Invalid input, please try again'
  end
end

def exit_jukebox
  puts 'Goodbye'
end

def run(songs)
  puts "Please enter a command:"
  input=gets.chomp
  
  if input=='help'
    help
    run(songs)
  elsif input=='list'
    list(songs)
    run(songs)
  elsif input=='play'
    puts "Please enter a song name or number:"
    play(songs)
  elsif input=='exit'
    exit_jukebox
  else
    run(songs)
  end

end