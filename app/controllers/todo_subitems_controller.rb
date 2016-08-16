class TodoSubitemsController < ApplicationController
	before_action :set_todo_item
	before_action :authenticate_user!

	def index
    	@todo_subitems = TodoSubitem.all
	end

	def show
  	end

	def create
		@todo_subitem = @todo_item.todo_subitems.create(todo_subitem_params)
		redirect_to todo_subitem_path
	end

	private

	def set_todo_item
		@todo_item = TodoItem.find(params[:todo_item_id])
	end

	def todo_subitem_params 
		params[:todo_subitem].permit(:content)
	end

end
