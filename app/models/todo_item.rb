class TodoItem < ActiveRecord::Base
  belongs_to :todo_list
  has_many :todo_subitems

  def completed?
  	!completed_at.blank?
  end
end
