class Api::ParadoxesController < ApplicationController
  skip_before_filter :verify_authenticity_token
	# this will return all the Paradoxes in JSON format
	def index
		render json: Paradox.all
	end

	# return individual Paradox in JSON format.
	def show
		paradox = Paradox.find(params[:id])
		render json: paradox
	end

	#create and store the data through API
	def create
		new_paradox = Paradox.new(paradox_params)
		if new_paradox.save
			render json: {
				# standard HTTP code for success
				status: 200,
				message: "Successfully created a Paradox. But can you really create a Paradox..?",
				paradox: new_paradox
			}.to_json
		else
			render json: {
				# something is wrong
				status: 500,
				errors: new_paradox.errors
			}.to_json
		end
	end

	private

	def paradox_params
    params.require(:paradox).permit(:title, :author, :description)
  end
end