module ElevatorMedia
    class Streamer
        def getContent()
            url = URI("https://jokeapi-v2.p.rapidapi.com/joke/Any?format=json&blacklistFlags=nsfw%2Cracist&idRange=0-150&type=single")

            http = Net::HTTP.new(url.host, url.port)
            http.use_ssl = true
            http.verify_mode = OpenSSL::SSL::VERIFY_NONE

            request = Net::HTTP::Get.new(url)
            request["x-rapidapi-key"] = ENV['x-rapidapi-key']
            request["x-rapidapi-host"] = 'jokeapi-v2.p.rapidapi.com'

            response = http.request(request)
            result=JSON.parse(response.read_body)['joke']
            return "<div><h3>Joke: #{result}</h3></div"
         end
        end
    end
    
        def nextJokeButton
            return nextJokeButton==true
        end
    


