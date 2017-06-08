class SettingsController < ApplicationController
	layout 'admin'

  def index
  	@setting = current_user.setting
  end

  def show
  	@setting = current_user.setting
  end

  def new
  	@setting = current_user.setting.new
  end

  def create
  	@setting = current_user.setting.new(setting_params)
  	if @setting.save
  		redirect_to settings_path
  	else
  		render :new
  	end

  	private

  	def setting_params
  		params.require(:setting).permit(:language, :country)
  	end
  end
end
