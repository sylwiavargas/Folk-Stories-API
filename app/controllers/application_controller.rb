class ApplicationController < ActionController::API
  before_action :authorized

  def encode_token(payload)
    JWT.encode(payload, ENV['jwt_key'])
  end

  def auth_header
    request.headers['Authorization']
  end

  def decoded_token
      begin
        JWT.decode(auth_header, ENV['jwt_key'])
      rescue JWT::DecodeError
        nil
    end
  end

  def current_user
    if decoded_token
      user_id = decoded_token[0]['user_id']
      @user = User.find(user_id)
    end
  end

  def logged_in?
    !!current_user
  end

  def authorized
    render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
  end
end
