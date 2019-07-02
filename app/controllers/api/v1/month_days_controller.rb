class Api::V1::MonthDaysController < ApplicationController
    skip_before_action :authorized

    def index
      @monthdays = MonthDay.all
      render json: @monthdays
    end

    def show
      @monthday = MonthDay.find_by(mdd: params[:mdd])
      render json: { monthday: MonthDaySerializer.new(@monthday) }, status: :accepted
    end

    def create
      @monthday = MonthDay.create(monthday_params)
      if @monthday.valid?
        render json: @monthday, status: :created
      else
        @all_errors = ''
        @monthday.errors.full_messages.each do |message|
          @all_errors += `#{message} - `
        end
        render json: { error: @all_errors }, status: :not_acceptable
      end
    end

    def update
      @monthday = MonthDay.find(params[:id])
      @monthday.update(monthday_params)
      render json: @monthday, status: :accepted
    end

    private

    def monthday_params
      params.require(:monthday).permit(:mdd, :month_id, :day_id)
    end
  end
