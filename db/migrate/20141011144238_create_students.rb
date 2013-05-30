require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreateStudents < ActiveRecord::Migration
  # HINT: checkout ActiveRecord::Migration.create_table
  def change
    create_table(:students) do |t|
      t.string   :first_name
      t.string   :last_name
      t.string   :gender
      t.date     :birthday
      t.string   :email
      t.string   :phone
      t.integer  :teacher_id
    end
  end
end
