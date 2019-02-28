#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

 my_songs = {
 "Go Go GO" => '/Users/madelineward/Development/labs/jukebox-cli-atlanta-web-career-031119/audio/Emerald-Park/01.mp3',
 "LiberTeens" => '/Users/madelineward/Development/labs/jukebox-cli-atlanta-web-career-031119/audio/Emerald-Park/02.mp3',
 "Hamburg" =>  '/Users/madelineward/Development/labs/jukebox-cli-atlanta-web-career-031119/audio/Emerald-Park/03.mp3',
 "Guiding Light" => '/Users/madelineward/Development/labs/jukebox-cli-atlanta-web-career-031119/audio/Emerald-Park/04.mp3',
 "Wolf" => '/Users/madelineward/Development/labs/jukebox-cli-atlanta-web-career-031119/audio/Emerald-Park/05.mp3',
 "Blue" => '/Users/madelineward/Development/labs/jukebox-cli-atlanta-web-career-031119/audio/Emerald-Park/06.mp3',
 "Graduation Failed" => '/Users/madelineward/Development/labs/jukebox-cli-atlanta-web-career-031119/audio/Emerald-Park/07.mp3'
 }

def help
  puts "I accept the following commands:\r\n- help : displays this help message\r\n- list : displays a list of songs you can play\r\n- play : lets you choose a song to play\r\n- exit : exits this program"
end



def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and
  #list the songs by name
  array_list = []
  songs.each_key{|song|
  puts "#{song}"}
  end


def play(my_songs)
  puts "Please enter a song name"
 user = gets.chomp
 if my_songs.keys.include?(user)
   song = my_songs[user]
   system "open #{song}"
 else
   puts "Invalid input, please try again"
 end
end




def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  loop do
  puts "Please enter a command:"
        user_input = gets.chomp
        if user_input == "help"
          help()
        elsif user_input == "list"
          list(my_songs)
        elsif user_input == "play"
          play(my_songs)
        elsif user_input == "exit"
          exit_jukebox
          break
    end
  end
end
