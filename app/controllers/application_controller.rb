class ApplicationController < ActionController::API
    before_action :configure_permitted_user, if: :devise_controller?

    protected

    def configure_permitted_user
        added_attrs = [:username, :email, :password, :password_confirmation]
        devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
        devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
    end
end
