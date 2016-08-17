require "rails_helper"

RSpec.describe Todo_item, type: :model do
  	context "Validity of a Todo_item" do
  		it "Todo_item valid?"do 

  		  todo_item = Todo_item.new
  		  todo_item.content = "Ruby"
  		  todo_item.todo_list_id = "2"

  		  expect(todo_item.valid?).to be_truthy
  		end
	end
end