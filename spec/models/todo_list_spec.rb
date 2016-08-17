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

    context "Testing View To Do List" do
      it "Register a Todolist" do
         todo_list = Todo_list.all
         size_old = todo_list.size

         visit '/todo_lists/new'
          
          within("#new_todo_list") do
            fill_in 'Title', :with => 'Jobs'
            fill_in 'Description', :with => 'My tasks'
          end

        click_button 'Create Todo list'
        expect(page).to have_content 'Todo list was successfully created.'
      
        todo_list = Todo_list.all
        expect(todo_list.size).to eql(size_old + 1)
      end    
    end
end