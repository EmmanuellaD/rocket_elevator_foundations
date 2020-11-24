module ElevatorMedia
    class Streamer
        def getContent
            url = URI("https://jokeapi-v2.p.rapidapi.com/submit")
            http = Net::HTTP.new(url.host, url.port)
            http.use_ssl = true
            http.verify_mode = OpenSSL::SSL::VERIFY_NONE
            request = Net::HTTP::Put.new(url)
            request["content-type"] = 'application/json'
            request["x-rapidapi-key"] = 'b1c5558801mshe6e9d930a2f510ep13653cjsn281222b25a95'
            request["x-rapidapi-host"] = 'jokeapi-v2.p.rapidapi.com'
            request.body = "{
                \"formatVersion\": 2,
                \"category\": \"Miscellaneous\",
                \"type\": \"single\",
                \"joke\": \"A horse walks into a bar...\",
                \"flags\": {
                    \"nsfw\": true,
                    \"religious\": false,
                    \"political\": true,
                    \"racist\": false,
                    \"sexist\": false
                }
            }"

            response = http.request(request)
            puts response.read_body
         end
    end
end

