class CallApiService
    require "net/https"
    require "./lib/tasks/http_request_sender.rb"
    def call(num)
        params = {num:num}
        url = "http://localhost:3001/user"

        sender = HttpRequestSender.new()
        res = sender.get(url,params)
        data = res.body
        code = res.code
        {
            data:data,
            code:code
        }
    end
end