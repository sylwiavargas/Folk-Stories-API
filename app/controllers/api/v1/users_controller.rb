require 'byebug'

class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create, :show, :index ]#, :profile]

  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end

  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: { user: UserSerializer.new(@user) }, status: :accepted
  end

  def create
  @user = User.create(user_params)
    if @user.valid? && params[:user][:password] === params[:user][:password_confirmation]
      @token = encode_token({ user_id: @user.id })
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    else
      @all_errors = ''
       @user.errors.full_messages.each do |message|
         @all_errors += "#{message} - "
       end
      if params[:user][:password] != params[:user][:password_confirmation]
        @all_errors += "Passwords don't match."
      end
       render json: { error: @all_errors }, status: :not_acceptable
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :name, :password,  :password_confirmation, :email, :zip)
  end
end
