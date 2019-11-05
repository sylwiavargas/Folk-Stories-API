class Api::V1::MonthDaysController < ApplicationController
    skip_before_action :authorized

    def index
      @monthdays = MonthDay.all
      render json: @monthdays
    end

    def show
      @monthday = MonthDay.find_by(mdd: params[:mdd])
      @events = @monthday.events.map{|e| {id: e.id, title_eng: e.title_eng, description_eng: e.description_eng, month_id: e.month_id, day_id: e.day_id, year_era_id: e.year_era_id, read_more_eng: e.read_more_eng, types: e.types, people: e.people}}

      render json: @events, status: :accepted
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
