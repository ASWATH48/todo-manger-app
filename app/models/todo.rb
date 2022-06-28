class Todo < ApplicationRecord
 def to_pleasant_string
    is_completed = completed ? "completed": "not"
    "#{id} #{task} #{due_date.to_s(:long)} #{is_completed}"
  end
end

