class MissionsController < ApplicationController
	def create
		mission = Mission.create!(mission_params)
		planet = mission.planet
		render json: planet, status: :created
	end

	def mission_params
		params.permit(:name, :scientist_id, :planet_id)
	end
end
