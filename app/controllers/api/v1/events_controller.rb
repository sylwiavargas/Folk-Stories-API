require 'byebug'

class Api::V1::EventsController < ApplicationController
  skip_before_action :authorized

  def index
    @events = Event.all
    render json: @events
  end

  def show
    @event = Event.find(params[:id])
    render json: { event: EventSerializer.new(@event) }, status: :accepted
  end

  def create
    @event = Event.create(event_params)
    if @event.valid?
      render json: @event, status: :created
    else
      @all_errors = ''
      @event.errors.full_messages.each do |message|
        @all_errors += `#{message} - `
      end
      render json: { error: @all_errors }, status: :not_acceptable
    end
  end

  def update
    @event = Event.find(params[:id])
    @event.update(event_params)
    render json: @event, status: :accepted
  end

  private

  def event_params
    params.require(:event).permit(:title_eng, :title_pl, :description_eng,  :description_pl, :date, :year, :month, :day, :read_more_eng, :read_more_pl, :published, :place_id, :country_id )
  end
end
