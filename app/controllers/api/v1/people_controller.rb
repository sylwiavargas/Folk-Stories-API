require 'byebug'

class Api::V1::PeopleController < ApplicationController

  def index
    @people = Person.all
    render json: @people
  end

  def show
    @person = Person.find(params[:id])
    render json: { person: PersonSerializer.new(@person) }, status: :accepted
  end

  def create
    @person = Person.create(person_params)
    if @person.valid?
      render json: @person, status: :created
    else
      @all_errors = ''
      @person.errors.full_messages.each do |message|
        @all_errors += `#{message} - `
      end
      render json: { error: @all_errors }, status: :not_acceptable
    end
  end

  def update
    @person = Person.find(params[:id])
    @person.update(person_params)
    render json: @person, status: :accepted
  end

  private

  def person_params
    params.require(:person).permit(:name, :death,  :birth, :bio_eng, :bio_pl, :picture, :quote_eng, :quote_pl, :read_more_eng, :read_more_pl, :published)
  end
end
