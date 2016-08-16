require "rails_helper"

RSpec.describe Todo_list, type: :model do
  	context "Validity of a Todo_list" do
  		it "Todo_list valid?"do 

  		  todo_list = Todo_list.new
  		  todo_list.title = "Job"
  		  todo_list.description = "My taks"

  		  expect(todo_list.valid?).to be_truthy
  		end
	end
end