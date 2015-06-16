class UsersController < ApplicationController
	before_action :load_all_users
	before_action :load_user, :only => [:show, :edit]
	def show
		@pins = @user.pins
	end

	def index
	end

	def edit
	end

	private
	def load_all_users
		@users = User.all
	end

	def load_user
		@user= User.find(params[:id])
	end


end