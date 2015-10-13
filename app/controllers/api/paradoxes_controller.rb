class Api::ParadoxesController < ApplicationController
	
	# this will return all the Paradoxes in JSON format
	def index
		render json: Paradox.all
	end
end