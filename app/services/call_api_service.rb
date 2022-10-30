class CallApiService
    require "net/https"
    def call(num)
            params = {num:num}
            url = "http://localhost:3001/user"

            uri = URI.parse(url)
            uri.query = URI.encode_www_form(params)
            http = Net::HTTP.new(uri.host, uri.port)
            req = Net::HTTP::Get.new uri.request_uri
            req['X-Test-Header'] = '1234'
            res = http.request req
            data = res.body
            code = res.code
            {
                data:data,
                code:code
            }
    end
end