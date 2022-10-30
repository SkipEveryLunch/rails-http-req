class CallApiService
    require "net/https"
    require "./lib/tasks/http_request_sender.rb"
    def call(num)
        params = {num:num}
        url = "http://localhost:3001"

        sender = HttpRequestSender.new(url)
        res = sender.get("/user",params)
        data = res.body
        code = res.code
        {
            data:data,
            code:code
        }
    end
end