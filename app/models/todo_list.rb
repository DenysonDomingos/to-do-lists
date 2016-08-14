class TodoList < ActiveRecord::Base
	has_many :todo_items

	# validates :privat, presence: true

end
