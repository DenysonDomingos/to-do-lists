class TodoList < ActiveRecord::Base
	has_many :todo_items

	# validates :status, presence: true

end
