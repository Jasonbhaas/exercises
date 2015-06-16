class PinsController < ApplicationController
	before_action :load_new_pin, :only => [:index]
	before_action :load_pins, :only => [:show, :index, :create]

	def show
	end

	def index
	end

	def new
	end

	def create
	end

	private

	def load_new_pin
		@pin = Pin.new
	end

	def load_pins
		@pins = Pin.all
	end

end