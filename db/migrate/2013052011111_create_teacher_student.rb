require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreateTeacherStudent < ActiveRecord::Migration

  # HINT: checkout ActiveRecord::Migration.create_table
  def change
    create_table(:teacher_students) do |t|
      t.integer :student_id
      t.integer :teacher_id
    end
  end
end
