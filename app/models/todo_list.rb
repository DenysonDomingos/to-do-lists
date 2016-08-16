class TodoList < ActiveRecord::Base
	has_many :todo_items

	# validates :privat, presence: true

	belongs_to :user

	has_many :favorite_todo_lists 
	has_many :favorited_by, through: :favorite_todo_lists, source: :user

end
