module DangJian
  module APIHelpers
    def current_user
      token = params[:token] || oauth_token
      @current_user ||= User.where(:private_token => token).first
    end

    def authenticate!
      error!({ "error" => "401 Unauthorized" }, 401) unless current_user
    end
  end
end
