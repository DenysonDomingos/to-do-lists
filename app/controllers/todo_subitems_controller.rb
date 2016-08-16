class TodoSubitemsController < ApplicationController
	before_action :set_todo_item
	before_action :set_todo_subitem, except: [:create]
	before_action :authenticate_user!


	def create
		@todo_subitem = @todo_item.todo_subitems.create(todo_subitem_params)
		redirect_to @todo_item
	end

	def destroy
		if @todo_subitem.destroy
			flash[:success] = "Todo list item was deleted"
		else
			flash[:error] = "Todo List item could not be deleted"
		end
		redirect_to @todo_item
	end

	def complete
		@todo_subitem.update_attribute(:completed_at, Time.now)
		redirect_to @todo_item, notice: "Todo item complete"
	end

	private

	def set_todo_item
		@todo_item = TodoItem.find(params[:todo_item_id])
	end

	def subitem
		@todo_subitem = @todo_item.todo_subitems.find(params[:id])
	end

	def todo_subitem_params 
		params[:todo_subitems].permit(:content)
	end
end
