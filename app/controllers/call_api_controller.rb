class CallApiController < ApplicationController
    def show
        res = CallApiService.new().call(params[:num])
        render json: res[:data], status: res[:code]
    end    
end
