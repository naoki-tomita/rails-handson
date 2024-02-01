class Todo < ApplicationRecord
  def self.search(query)
    Todo.where("name LIKE ? OR description LIKE ?", "%#{query}%", "%#{query}%").to_a
  end
end
