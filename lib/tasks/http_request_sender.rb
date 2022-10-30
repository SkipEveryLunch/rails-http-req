
class HttpRequestSender
    require "net/https"
    def initialize
    end
    def get(url,params)
        uri = URI.parse(url)
        uri.query = URI.encode_www_form(params)
        http = Net::HTTP.new(uri.host, uri.port)
        req = Net::HTTP::Get.new uri.request_uri
        req['X-Test-Header'] = '1234'
        res = http.request req
    end
    def post
        #postの処理
    end
    def put
        #putの処理
    end
    def delete
        #deleteの処理
    end
end