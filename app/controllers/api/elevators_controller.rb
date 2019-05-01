class Api::ElevatorsController < ApplicationController

  def create
    @elevator = Elevator.new(
                              current_floor: params[:current_floor],
                              target_floor: params[:target_floor],
                              direction: params[:direction],
                              building_id: params[:building_id]
                            )

    if @elevator.save
      render json: {message: "Elevator created successfully"}, status: :created
    else
      render json: {errors: @elevator.errors.full_messages}, status: :bad_request
    end
  end

  def show
    @elevator = Elevator.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @elevator = Elevator.find(params[:id])

    @elevator.current_floor = params[:current_floor] || @elevator.current_floor
    @elevator.target_floor = params[:target_floor] || @elevator.target_floor
    @elevator.direction = params[:direction] || @elevator.direction

    @elevator.select_floor
    @elevator.show_floor

    if @elevator.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @elevator.errors.full_messages}, status: :unprocessable_entity
    end    
  end

end
