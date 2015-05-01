class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def create_respond(resource, serializer_name) 
	respond_to do |format|
		format.json {render json: resource, serializer: serializer_name} #, meta: {total: 10}
	end
  	
  end
end

