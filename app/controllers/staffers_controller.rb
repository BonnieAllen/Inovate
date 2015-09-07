class StaffersController < ApplicationController
	before_action :find_staffer, only: [:show, :edit, :update, :destroy]

	def index
		@staffers = Staffer.all.order("created_at DESC")
	end

	def show
	end

	def new
		@staffer = Staffer.new
	end

	def create
		@staffer = Staffer.new(staffer_params)
		if @staffer.save
			redirect_to @staffer
		else
			render "New"
		end
	end

	def edit
	end

	def update
		if @staffer.update(staffer_params)
			redirect_to @staffer 
		else
			render "Edit"
		end
	end

	def destroy
		@staffer.destroy
		redirect_to root_path
	end

	private

	def staffer_params
		params.require(:staffer).permit(:first, :last, :username, :email, :phone, :profile)
	end

	def find_staffer
		@staffer = Staffer.find(params[:id])
	end
end
