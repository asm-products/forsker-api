module API
	class GroupsController < ApplicationController
		before_action :get_obj, only: [:show, :edit, :update, :destroy]
		
		def serializer_name
			#returns all the groubs including their relations. e.g., scientists & events
			if params[:detail] 
				serializer_name = GroupDetailSerializer
			#returns group's scientists
			elsif params[:scientists]
			elsif params[:events]
			elsif params[:positions]	
			else 
				serializer_name = GroupSerializer
			end
		end

		def index
			@groups = Group.all
			create_respond @groups, serializer_name
		end

		def show
			if scientists = params[:scientists]
				@group = 
			create_respond @group, serializer_name
		end

		def get_obj
			@group = Group.find(params[:id])
		end


	end
end
