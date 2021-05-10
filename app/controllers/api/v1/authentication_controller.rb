class Api::V1::AuthenticationController < ApplicationController
    def create
        token = AuthenticationTokenService.call(get_user.id)

        params.require(:password)
        render json: {token: token}, status: :created
    end

    private
    def get_user
        @user ||= User.find_by(username: params.require(:username))
    end
end
