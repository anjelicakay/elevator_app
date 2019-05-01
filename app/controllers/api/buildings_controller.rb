class Api::BuildingsController < ApplicationController

  def create
    @building = Building.new(
                              name: params[:name],
                              total_floors: params[:total_floors]
                            )

    if @building.save
      render json: {message: "Building created successfully"}, status: :created
    else
      render json: {errors: building.errors.full_messages}, status: :bad_request
    end
  end

  def show
    @building = Building.find(params[:id])
    render 'show.json.jbuilder'
  end  
          
end
