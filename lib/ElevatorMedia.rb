module ElevatorMedia
    class Streamer
        def getContent
           "Hello world"
         end
         def apiTest
            url = URI("https://jokeapi-v2.p.rapidapi.com/joke/Any?contains=C%2523&format=json&blacklistFlags=nsfw%2Cracist&idRange=0-150&type=single%2Ctwopart")

            http = Net::HTTP.new(url.host, url.port)
            http.use_ssl = true
            http.verify_mode = OpenSSL::SSL::VERIFY_NONE

            request = Net::HTTP::Get.new(url)
            request["x-rapidapi-key"] = ENV['x-rapidapi-key']
            request["x-rapidapi-host"] = 'jokeapi-v2.p.rapidapi.com'

            response = http.request(request)
            response.read_body
         end
         def changeJokeFormat
           url = URI("https://jokeapi-v2.p.rapidapi.com/joke/Any?contains=C%2523&format=json&blacklistFlags=nsfw%2Cracist&idRange=0-150&type=single%2Ctwopart")

            http = Net::HTTP.new(url.host, url.port)
            http.use_ssl = true
            http.verify_mode = OpenSSL::SSL::VERIFY_NONE

            request = Net::HTTP::Get.new(url)
            request["x-rapidapi-key"] = ENV['x-rapidapi-key']
            request["x-rapidapi-host"] = 'jokeapi-v2.p.rapidapi.com'

            response = http.request(request)
            response.read_body
            return "<div class='text-center'><h4>Quote of the day: #{stringQuote}</h4><h6>Author: #{stringAuthor}</h6></div>"
        end
    end
end

