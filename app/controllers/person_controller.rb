class PersonController < ApplicationController
	# before_action :authorize
	def index
		@users = User.where(organization_id: params[:organization_id]).all
	end
	def new
		@user = User.new
		
	end
	def create
		@user = user_from_params
	
		if @user.save
		  redirect_to organizations_path
		else
		  render :new
		end
	end
	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update(user_params)
			redirect_to person_index_path
		else
			render :edit
		end
	end

	def user_from_params
		email = user_params.delete(:email)
		password = user_params.delete(:password)
		Clearance.configuration.user_model.new(user_params).tap do |user|
		  user.email = email
		  user.password = password
		end
	end
	def user_params
		params.require(:user).permit(
			:email, 
			:password, 
			:name, 
			:phone, 
			:avatar,
			:organization_id,
			)
	end

	def destroy
		@user = User.where(id: params[:id]).first
		@user.destroy
		redirect_to organizations_path
	end
end
