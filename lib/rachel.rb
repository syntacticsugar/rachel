require "rachel/version"

module Rachel #Rachel is one of a kind
  def self.start   # surveys argv0 from user input and properly delegates the methods 
    case ARGV[0]  
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
    end
  end
end
