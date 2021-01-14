module ElevatorMedia
    class Streamer

#         http.use_ssl = true
# http.verify_mode = OpenSSL::SSL::VERIFY_NONE

# request = Net::HTTP::Get.new(url)
# request["x-rapidapi-key"] = 'f96f2510acmsh4237e8c7e65d1f3p1a6b35jsn82bb21db9482'
# request["x-rapidapi-host"] = 'covid-19-coronavirus-statistics.p.rapidapi.com'

# response = http.request(request)
# puts response.read_body
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
            return "<div><h3> #{result}</h3></div"
         end
        end
    end
    
        def nextJokeButton
            return nextJokeButton==true
        end
    


