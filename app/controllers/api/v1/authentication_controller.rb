class Api::V1::AuthenticationController < ApplicationController

        class AuthenticationError < StandardError; end
        rescue_from AuthenticationError, with: :handle_unauthenticated

    def create
        
        get_user
        token = AuthenticationTokenService.call(@user.id)
        raise AuthenticationError unless @user.valid_password?(params.require(:password))

        params.require(:password)
        render json: {token: token}, status: :created
    end

    private
    def get_user
        @user ||= User.find_by(username: params.require(:username))
    end
    def handle_unauthenticated
        head :unauthorized
    end
end
