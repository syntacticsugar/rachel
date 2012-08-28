require "rachel/version"

module Rachel #Rachel is one of a kind, hence she is a module :D :D
  def self.start   # surveys argv0 from user input and properly delegates the methods 
    case ARGV[0]  
<<<<<<< HEAD
    when "weather"
      zipcode = ARGV[1]
      fetched_weather = RestClient.get "http://shady.herokuapp.com/weather/#{zipcode}" # we now have a string which is a Json hash!  wooohoo!
      #next step: make it pretty, legible, so we can print it to $stdout
      parsed_weather = JSON.parse(fetched_weather) # we can haz a ruby hash now, yay!!!!
      pw = parsed_weather
      puts "A quick glance outside the window of my cozy East Village studio 
      \nreveals the weather to be "
    when "define"
      
    when "translate"
      phrase = ARGV[1]
      language_dictionary = {
        'Arabic' => 'ar',
        'Chinese' => 'cn',
        'Czech' => 'cz',
        'English' => 'en',
        'French' => 'fr',
        'Greek' => 'gr',
        'Italian' => 'it',
        'Japanese' => 'ja',
        'Korean' => 'ko',
        'Polish' => 'pl',
        'Portuguese' => 'pt',
        'Romanian' => 'ro',
        'Spanish' => 'es',
        'Turkish' => 'tr'
      }

    when "thesaurus" || "syn" || "synonym" || "thes"
      synonym = ARGV[1]
=======
      when "weather"
        zipcode = ARGV[1]
        fetched_weather = RestClient.get "http://shady.herokuapp.com/weather/#{zipcode}" # we now have a string which is a Json hash!  wooohoo!
        #next step: make it pretty, legible, so we can print it to $stdout
        parsed_weather = JSON.parse(fetched_weather) # we can haz a ruby hash now, yay!!!!
        pw = parsed_weather
        puts "A quick glance outside the window of my cozy East Village studio 
        \nreveals the weather to be "
      when "define"
      when "translate"
>>>>>>> 689c123cce44274b8396aaca53f4e24dae2e9958
    end
  end
end
