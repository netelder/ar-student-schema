require_relative '../../db/config'

class Student < ActiveRecord::Base
  validates :email, :birthday => true

  def name
    self.first_name + " " + self.last_name
  end

  def age
    ((DateTime.now - self.birthday)/365).to_i
  end

end

# implement your Student model here
# email validation regex: \S+@\S+.\S{2,}
