class OrganizationsController < ApplicationController
	before_action :authorize
	def index
		@organizations = Organization.all
	end

	def new
		@organization = Organization.new
	end

	def create
		@organization = Organization.new(organization_params)

		if @organization.save
			redirect_to organizations_path
		else
			render :new
		end
	end

	def edit
		@organization = Organization.find(params[:organization_id])
	end

	def update
		@organization = Organization.find(params[:organization_id])
		if @organization.update(organization_params)
			redirect_to organizations_path
		else
			render :edit
		end
	end

	def destroy
		@organization = Organization.where(id: params[:id]).first
		@organization.destroy
		redirect_to organizations_path
	end

	private

	def organization_params
		params.require(:organization).permit(:name, :phone, :email, :website, :logo)
	end
end
