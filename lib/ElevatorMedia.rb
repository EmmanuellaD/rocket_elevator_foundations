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
            request["x-rapidapi-key"] = 'b1c5558801mshe6e9d930a2f510ep13653cjsn281222b25a95'
            request["x-rapidapi-host"] = 'jokeapi-v2.p.rapidapi.com'

            response = http.request(request)
            response.read_body
         end
         def changeJokeFormat
            url = URI("https://jokeapi-v2.p.rapidapi.com/joke/Any?format=json&blacklistFlags=nsfw%2Cracist&idRange=0-150&type=single%2Ctwopart")
            http = Net::HTTP.new(url.host, url.port)
            http.use_ssl = true
            http.verify_mode = OpenSSL::SSL::VERIFY_NONE
            request = Net::HTTP::Get.new(url)
            request["x-rapidapi-key"] = 'b1c5558801mshe6e9d930a2f510ep13653cjsn281222b25a95'
            request["x-rapidapi-host"] = 'jokeapi-v2.p.rapidapi.com'
            response = http.request(request)
            JSON.parse(response.read_body)
        end
    end
end

