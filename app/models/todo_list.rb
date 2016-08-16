class TodoList < ActiveRecord::Base
	
	# validates :privat, presence: true

	has_many :todo_items

	belongs_to :user

	has_many :favorite_todo_lists 
	has_many :favorited_by, through: :favorite_todo_lists, source: :user

end
