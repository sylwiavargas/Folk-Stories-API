require 'byebug'

class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create, :profile, :show, :index]

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
      if @user.valid?
       render json: { user: UserSerializer.new(@user) }, status: :created
     else
       render json: { error: 'failed to create user' }, status: :not_acceptable
     end
    # if @user.valid?
    #   @token = encode_token({ user_id: @user.id })
    #   render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    # else
    #   @all_errors = ''
    #   @user.errors.full_messages.each do |message|
    #     @all_errors += "#{message} - "
    #   end
    #   render json: { error: @all_errors }, status: :not_acceptable
  end

  private

  def user_params
    params.require(:user).permit(:username, :name, :password, :email, :zip)
  end
end
