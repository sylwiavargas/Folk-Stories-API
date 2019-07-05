class Api::V1::ConnectionsController < ApplicationController
    skip_before_action :authorized

    def index
      @connections = Connection.all
      render json: @connections
    end

    def show
      @connection = Connection.find(params[:id])
      @person_one = @connection.person_one
      @person_two = @connection.person_two

      render json: @connection, status: :accepted
    end

    def create
      @connection = Connection.create(connection_params)
      if @connection.valid?
        render json: @connection, status: :created
      else
        @all_errors = ''
        @connection.errors.full_messages.each do |message|
          @all_errors += `#{message} - `
        end
        render json: { error: @all_errors }, status: :not_acceptable
      end
    end

    def update
      @connection = Connection.find(params[:id])
      @connection.update(connection_params)
      render json: @connection, status: :accepted
    end

    private

    def connection_params
      params.require(:connection).permit(:relationship, :person_one_id, :person_two_id)
    end
  end
