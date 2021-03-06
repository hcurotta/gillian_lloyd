class PagesController < ApplicationController
	before_filter :authenticate, only: [:admin, :update]

	def index
		@content = Content.first || Content.new
	end

	def admin
		@content = Content.first || Content.new
	end

	def update
		@content = Content.where(:id => params[:content][:id]).first_or_initialize
		@content.update_attributes(permitted_params)
    flash = {success: "saved"}
		redirect_to admin_path, flash: flash
	end

	def request_callback
		RequestMailer.callback_request(params[:phone_number]).deliver unless params[:phone_number].blank?
	end

	def permitted_params
		params.require(:content).permit!
	end

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["USERNAME"] && password == ENV["PASSWORD"]
    end
  end
end
