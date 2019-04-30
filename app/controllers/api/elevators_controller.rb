class Api::ElevatorsController < ApplicationController

  def create
    @building = Building.new(
                              current_floor: params[:current_floor],
                              targer_floor: params[:targer_floor],
                              direction: params[:direction]
                            )

    if elevator.save
      render json: {message: "Elevator created successfully"}, status: :created
    else
      render json: {errors: elevator.errors.full_messages}, status: :bad_request
    end
  end

  def show
    @elevator = Elevator.find(params[:id])
    render 'show.json.jbuilder'
  end
end
