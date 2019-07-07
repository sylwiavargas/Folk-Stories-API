require 'byebug'

class Api::V1::PpsController < ApplicationController
  skip_before_action :authorized

  def index
    @pps = Pp.all
    render json: @pps
  end

  def show
    @pp = Pp.find(params[:id])
    render json: { pp: PpSerializer.new(@pp) }, status: :accepted
  end

  def create
    @pp = Pp.create(pp_params)
    if @pp.valid?
      render json: @pp, status: :created
    else
      @all_errors = ''
      @pp.errors.full_messages.each do |message|
        @all_errors += `#{message} - `
      end
      render json: { error: @all_errors }, status: :not_acceptable
    end
  end

  def update
    @pp = Pp.find(params[:id])
    @pp.update(pp_params)
    render json: @pp, status: :accepted
  end

  private

  def pp_params
    params.require(:pp).permit(:description_eng, :place_id, :person_id)
  end
end
