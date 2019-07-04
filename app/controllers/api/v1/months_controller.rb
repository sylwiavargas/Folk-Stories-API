class Api::V1::MonthsController < ApplicationController
    skip_before_action :authorized

    def index
      @months = Month.all
      render json: @months
    end

    def show
      @month = Month.find_by(mdd: params[:mdd])
      @event = @month.events.map{|e| {event: {id: e.id, name_eng: e.name_eng, name_pl: e.name_pl, events: e.events}}}

      render json: @events, status: :accepted
    end

    def create
      @month = Month.create(month_params)
      if @month.valid?
        render json: @month, status: :created
      else
        @all_errors = ''
        @month.errors.full_messages.each do |message|
          @all_errors += `#{message} - `
        end
        render json: { error: @all_errors }, status: :not_acceptable
      end
    end

    def update
      @month = Month.find(params[:id])
      @month.update(month_params)
      render json: @month, status: :accepted
    end

    private

    def month_params
      params.require(:month).permit(:month, :name_pl, :name_eng)
    end
  end
